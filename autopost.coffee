#!/usr/local/bin/coffee
fs=require 'fs'
async=require 'async'
marked=require 'marked-metadata'

createPost=(metadata,originalfile,callback) ->

  fs.readFile originalfile, (err,contents) ->
    if err
      console.log "Failed to read #{originalfile}"
    else
      text=contents.toString()
      matches=text.match /!\[(.*)\]\((.*)\)/g
      for match in matches or []
        [dummy,title,href]=match.match /!\[(.*)\]\((.*)\)/
        text=text.replace match, "![#{title}](/img/#{href})"

      # Create the post file
      filename=
        "_posts/#{metadata.date}-#{metadata.title.replace(' ','-')}.markdown"

      fs.writeFile filename, text, (err) ->
        if err
          callback err
        else
          console.log "Created _posts/#{filename}"

          # Move images to the right place
          async.each(
            matches or []
            (match,callback) ->
              [dummy,title,href]=match.match /!\[(.*)\]\((.*)\)/
              fs.rename "#{process.argv[2]}/#{href}", "img/#{href}", (err) ->
                if err
                  console.log "Failed to move #{href}"
                else
                  console.log "New photo: #{href}"
                callback err
            callback
          )

fs.readdir process.argv[2], (err,files) ->
  if err
    console.log err
  else
    async.filter(
      files
      (file,callback) ->
        fs.stat "#{process.argv[2]}/#{file}", (err,stats) ->
          callback(
            stats and
            stats.isFile() and
            file[0] isnt "." and
            file.substr(-3) is ".md"
          )
      (files) ->
        for file in files
          md=new marked "#{process.argv[2]}/#{file}"
          # console.log md.metadata()
          # console.log md.markdown()
          metadata=md.metadata()
          if metadata.layout is "post"

            # Find all the images in the text
            createPost metadata, "#{process.argv[2]}/#{file}", (err) ->
              if err
                console.log "Unable to create post from #{file}"

            # TODO Take any remaining photos and make a simple post
    )
