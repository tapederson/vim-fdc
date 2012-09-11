#vim-fdc#

This is some scripts to better enable working with Force.com from within vim.

##file types##

Apex files are configured to automatically syntax highlight as java.
Visualforce pages are configured to syntax hightlight as html.

##ant support##

I have included an ant script for deploying and retrieving files.

Within vim, cd to the root of your project.

In normal mode:

**make deploy**      - this will deploy the currently open file to your org.

**make deployAll**   - this will overwrite everything in your org with what is in your project folder.

**make retrieveAll** - this will overwrite everything in your project folder with what is in your org.

**Note:** The script assumes build.xml resides in a build folder below your project root and package.xml resides in a src folder below your project root.


##setup##

* Copy the "ftdetect" folder go in your ~/.vim folder.
* Copy the "build" folder into the root of your project folder.
* If you copied the project from Eclipse, replace the package.xml in src under your project folder with the one provided. Otherwise, if you do not have a src folder yet you can copy the src folder provided into the root of your project folder.
* Edit build/build.properties to reflect your username and password
* Restart vim

##New Features##
* 9.11.12: TonyP - Added default support for syntax highlighting on Resource files (Javascript) and VF Components
* 9.11.12: TonyP - Added .vimrc file which includes mappings to run ":make deploy" by hitting command-1 in all modes of VIm
* 9.11.12: TonyP - include components in retrieveAll
* 9.11.12: TonyP - make workspace dynamic, so you can toggle between environments just by switching the value of sf.buildOrg in build.properties
* 9.11.12: TonyP - make package.xml dynamic, so you can toggle which package.xml to use in each environment by switching the value of sf.manifestBuild in build.properties
* 9.11.12: TonyP - use prebuilt package.xml template to determine what to pull down in retreiveAll
* 9.11.12: TonyP - TRICK: when toggling between dev environments, just make two different sets of all your vars in build.properties and copy/paste whichever one you want to work in at the bottom of your file, then run :make retrieveAll from VIm.
