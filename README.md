# trustdissues

*in concept, patches trustd to not contact valid.apple.com*

GIST: [trustdissues](https://gist.github.com/bfu4/532be7173aef3c94e34bcd649e207641)

in light of recent events, when apple's oscp server went bye-bye, some people got scared:

"so apple knows what im opening?"
"they know what im opening, when i'm opening it?"

and more questions like that.
this is a [CONCEPTUAL] "fix" for this, where instead of trying to auth with
`valid.apple.com`, it will try to communicate with `aalid.apple.com`, which goes nowhere. lol.

LETS KEEP IN MIND, THESE PATCHES DO NOT WORK, AND APPLYING THEM WILL FORCE A REINSTALL OF SYSTEM FILES. PLEASE READ THE GIST FOR MORE INFORMATION!!!!
THE GIST KEEPS TRACK OF ALL ATTEMPTS AND ASSUMPTIONS IN CHRONOLOGICAL ORDER, AND IS A RUN-DOWN OF MOST OF THIS PROJECT.

this repository contains a build script and patch files. enjoy!

# applying the patches

YOU WILL NEED: bsdiff (for bspatch) and the xcode developer tools. the xcode dev tools are needed for the debugging, and for lipo (VERY IMPORTANT FOR THE UNIVERSAL BINARY)

# my experience / a diy section

i like reading source code and deciphering from decompiled code (although i might not be very good at it). this was my first time trying to patch a binary, and GOD was it annoying due to the fact that it was a universal binary. since gdb won't let me debug universal binaries on this laptop, i mean testing was practically impossible. a lot of understanding this binary, patching, and verifying the patches came from:

* ghidra
* radare2
* strings
* lldb
* xxd
* nm
* bsdiff / bspatch
* lipi

the binary's path on the mac OS system is: `/usr/libexec/trustd`

this was actually a lot of fun, and by the time i can get testing working, i hope this will be effective / i will get it to be effective. lol.


DISCLAIMER: this is untested until i can get myself write access on this 
filesystem again. sigh. big sur is hard

-------------------------------------------------------------------

built on a macbook pro 14,1 on bigsur
