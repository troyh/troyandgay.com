---
author: troyh
comments: true
date: 2003-11-16 19:10:52+00:00
layout: post
slug: xml-recipes
title: XML Recipes
wordpress_id: 2496
---

Every once in a while, someone gets ideas about crossing recipes and computers. Of course, [I love the idea](http://recipezaar.com). Two common ideas we hear a lot are 1) to put recipes in [XML](http://www.webopedia.com/TERM/X/XML.html) format and do all sorts of wonderful things and 2) that kitchen appliances should be smart and you should be able to feed them recipes and have your food made for you. They're both great ideas, but invariably, people underestimate the work involved ("But it's just a recipe!") and overestimate the usefulness ("It would be so cool!"). The amazing thing to me about the 2nd idea is that few people would deny that humans are more intelligent and capable than computers. Yet, people who find cooking to be a difficult task (technologists, for example) assume that computers will find it easy. The day that computers are able to cook as well as humans will come long after the day that computers get so annoyed with us that they simply wipe the inferior human race out. They certainly aren't going to want to waste their time cooking for us! So it's a moot concept.

But the 1st idea is actually possible today. We contributed to [RecipeML](http://www.formatdata.com/recipeml/) and even named the format, so we clearly believe in the concept. (As an aside, it's unfortunate that the owner of RecipeML seems to have vanished so we have little choice but to create a new format).

Today we found a post talking about the first idea, so I posted the following as a comment on [Building The Recipe Web](http://www.decafbad.com/blog/tech/the_recipe_web.html) and am re-posting it here:

As one of the contributors to RecipeML (and the person who named it ;), I like the concept. However, it isn't useful in practice. Imagine the same thing for auctions. There could be an XML format for auctions, everyone can post their items for sale on their weblog and auction aggregators would replace eBay. This would not be as good as eBay, obviously, as there is significant value to a centralized database of auctions. The same is true for recipes, in my opinion.
<!-- more -->
Additionally, creating RecipeML for recipes is a difficult task. Sure, it's fairly easy to write a few recipes in RecipeML if you're technically adept, but to do thousands becomes impossible and for the average recipe producer (grandmothers, chefs, etc) it just won't happen. And you really do need thousands to be a useful database (even your average cooking magazine publishes hundreds a month).

We (Recipezaar) wrote a natural language recipe parser to make this possible and it's a difficult job. It took us 3 years to write it! Recipes are far more complicated than you might think, believe it or not. And a natural language recipe parser is not trivial software, which is why no other recipe web site has done this except for Recipezaar. We could release the software under the GPL so that everyone can start creating XML recipes. We've considered it and we've talked to people about doing it but after some thought, people do realize that it wouldn't be useful. Because, again, having recipes distributed across web sites is less powerful than a centralized repository of freely-available recipes.

Imagine a world of XML recipes distributed around the web on weblogs. An aggregator would need to aggregate millions of weblogs just to cull together a few hundred or thousand recipes. Now imagine millions of aggregator users doing this daily or hourly the way they do this today for weblogs. And if a weblogger had 1,000 recipes on their weblog archives, they wouldn't want millions of aggregators eating their bandwidth every day to maintain the database for each individual using an aggregator (webloggers today already complain about aggregators costing them too much money in bandwidth costs). Additionally, 99.999% of people who create recipes are unlikely to have a weblog to post their XML recipes so you'd lose the majority of the potential content.

A centralized repository provides a place for regular users to post their recipes and get them seen by the most number of people. And a centralized repository provides an easy way to search for recipes, browse for recipes, review & rate recipes, discuss recipes, etc. And let's talk numbers.... today, Recipezaar has 73,000 recipes in the database and, while it's the largest database of recipes on the internet, people still can't find a particular recipe because there is an infinite number of possible recipes that can be created. Having a few hundred or a few thousand recipes is not a useful database to people. More is better. And acquiring more via an aggregator is a big and expensive job.

Distributed databases are useful in some contexts and centralized databases are useful in other contexts. Each has their own advantages and disadvantages, but like auctions, recipes are best stored centrally where everyone has access to them.
