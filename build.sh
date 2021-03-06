#/bin/bash

# final build script for patching this

# i have a local copy for this stored at ../bigsur/trustd, made by
# cp /usr/libexec/trustd ../bigsur/ <-- where bigsur/ is a folder path in this workspace

# patches already generated by me, ghidra, and bsdiff

printf "\033[1;35m[patching]\033[0m\n"
bspatch /usr/libexec/trustd trustdintel pc/patch.bspatch    	 # patch for strings in intel half made by bsdiff
bspatch /usr/libexec/trustd trustdarm pc/ARMFINALPATCH.bspatch   # patch for strings in the arm half
ls -l trustdintel						 # exist?
ls -l trustdarm							 #

printf "\033[1;35m[checking]\033[1;33m hehe owo \033[0m\n"
echo `lipo trustdintel -archs`                                   # lets check these
echo `lipo trustdarm -archs`                                     #

printf "\033[1;35m[making universal]\033[0m\n"			 # create universal binary
lipo trustdintel trustdarm -create -output trustd                #
echo `lipo trustd -archs`					 # last check
mkdir build/							 #
mv trustd build/						 #
