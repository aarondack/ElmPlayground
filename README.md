PhotoGroove : About
===================

This is a project that is based off of the so far very very good "Elm in Action" by Richard Feldman available from Manning Publications.

In this project, there is an interface which contains a gallery of photos, and a larger view of a selected Photo.  Other features include : 
* Random Photo Picker
* Thumbnail Size Picker

Setup
-----

to get started using elm I.E. setting up your local environment, please follow the guidance set [here](http://guide.elm-lang.org/get_started.html "Get Started with Elm")

I also suggest that you set your editor of choice up for development in Elm.  I personally have found the experience in VScode to be
wonderful, largely because you get compiler feedback every time you save a file.  Although, I've read people say good things about most of the
more popular text-editors.  Atom seems to be fairly popular right now. 

I would further suggest that you use elm-format.  It will 
help you to quickly understand what the community 'best practice' or style is fairly quickly.  It also does the work for you -- if you have any
confusion over what happened, looking at the diff is extremely helpful. 

information for elm-format can be found [here](https://github.com/avh4/elm-format#installation "elm-format")

Compiling/Other
---------------

### A note on compiling elm. 

You will need to compile this code in order for you changes to take effect.  For example, right now since all the elm code that we are writing is 
maintained in a single file, the command is:

_elm-make PhotoGroove.elm --output elm.js_

this simply takes the file PhotoGroove.elm (our elm source) and creates a compiled output of elm.js which we use in index.html

Beyond that, learn a little about types, type alias(ing) in elm, and general language features, and above all else, have fun!  