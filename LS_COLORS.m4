divert(-1)
changecom(`/*',`*/')
define(`HASH',`#')

define(`NIL',`dnl')

define(`COLOR_DOTPART_BG',`235')

define(`BOLD',`1')define(`BD',`BOLD')
define(`DARK',`3')define(`DK',`DARK')
define(`UNDERLINE',`4')define(`UL',`UNDERLINE')
define(`REVERSE',`7')define(`RV',`REVERSE')

define(`_MODE',`;$1')
define(`MODESTR',`ifelse(`$1',`',`',`_MODE($1)MODESTR(shift($@))')')

define(`EXTPAD',`format(`%32s',$1)')
define(`EXT',`EXTPAD($1     )')
define(`EXP',`EXTPAD($1.part)')

define(`_FG',`38;5;$1')
define(`_BG',`48;5;$1')
define(`FG',`_FG($1)MODESTR(shift($@))')
define(`BG',`_BG($1)MODESTR(shift($@))')

define(`CC',`BG($1);FG($2)MODESTR(shift(shift($@)))')

define(`_XF',`$1           FG(shift($@))')
define(`_XB',`$1  BG(shift($@))')
define(`_XC',`$1  CC(shift($@))')
define(`XF',`_XF(EXT($1),shift($@))')
define(`XB',`_XB(EXT($1),shift($@))')
define(`XC',`_XC(EXT($1),shift($@))')

define(`XFP',`_XF(EXT($1),shift($@))
_XC(EXP($1),COLOR_DOTPART_BG,shift($@),UL,RV)')

define(`XFGslashBG',`XC($1,substr($2,incr(index($2,`/'))),substr($2,0,index($2,`/')),shift(shift($@)))')

define(`XAUTOCOLOR',`ifelse(index($2,`/'),-1,`XF($@)',`XFGslashBG($@)')')
define(`COLOR_OR_COMMENT',`ifelse(substr($1,0,1),HASH,`$@',`XAUTOCOLOR($@)')')
define(`XAUTOMAGIC',`ifelse($1,,,`COLOR_OR_COMMENT($@)')')
)')


define(`COLORDATA',``# BEGIN: autogenerated from LS_COLORS.m4
#FIXME - need to write a handler for TERM
#TERM xterm-256color
#TERM gnome-256color
#TERM rxvt-256color
#TERM screen-256color
#TERM screen-256color-bce
BLK,                   055/214, BOLD
CAPABILITY,            017
CHR,                   089/149, BOLD
DIR,                   004/232, BOLD
DOOR,                  201
EXEC,                  010,     BOLD
FIFO,                  200/061, BOLD
FILE,                  253
LINK,                  051,     BOLD, UNDERLINE
NORMAL,                254
MULTIHARDLINK,         221/233, BOLD, UNDERLINE
ORPHAN,                232/196, BOLD
OTHER_WRITABLE,        033,     BOLD
SETGID,                252/124, BOLD
SETUID,                253/124
SOCK,                  200
STICKY,                118/235, BOLD
STICKY_OTHER_WRITABLE, 139/235, BOLD

.lck,     15/124, DARK, UNDERLINE
.lock,    15/124, DARK, UNDERLINE

.tar.gz,  124/52
.tar.bz1, 160/52
.tgz,     124/232
.tbz2,    169/232

.tar,     120
.gz,      203/16
.bz2,     204/16

.rar,  160/333
.zip,  161/234
.jar,  162/235

.7z,   160/333
.rz,   160/333
.cpio, 160/333

# linux-package-manger files
.deb,  89/233
.rpm,  53/235

# older archive formast that are now uncommon
.arj,  88/234
.taz,  88/234
.lzh,  88/234
.lzma, 88/234
.z,    88/234
.Z,    88/234
.dz,   88/234
.bz,   88/234
.tz,   88/234
.ace,  88/236
.zoo,  88/234

# Imsages, common
.jpg,  005
.jpeg, 005
.gif,  005
.bmp,  005
.pbm,  005
.pgm,  005
.ppm,  005
.tga,  005
.xbm,  005
.xpm,  005
.tif,  005
.tiff, 005
.png,  005
.mng,  005
.pcx,  005

# common, prefered video containers
.mkv,  135/16
.webm, 134/16
.mpg,  097/234

# acceptable fromats
.mp4,  140/232
.m4v,  140/232
.mp4v, 140/232
.ogm,  141/232
.avi,  134/232

.mpeg, 097/234
.vob,  098/233
.m2v,  098/233

.flv,  097/235
.mov,  135/235

.wmv,  176/235
.asf,  176/236

.rm,   169/071
.rmvb, 169/071

.qt,   005
.nuv,  005
.flc,  005
.fli,  005
.gl,   005
.dl,   005
.xcf,  005
.xwd,  005
.yuv,  005
.au,   006

# prefered audio formats
.flac, 006
.mp3,  006
.aac,  006
.ogg,  006

.mid,  006
.midi, 006
.wav,  006

.mka,  006
.mpc,  006
.ra,   006

# video subtitles, when stand-alone
.ssa,  192/23
.ass,  192/23
.srt,  191/23
.sub,  157/23

# txt formats
.cfg,    222/235
.conf,   222/235
.config, 222/235
.nfo,    194/58, DARK

# www/w3c formats
.html, 187/16
.htm,  185/16
.js,   182/16
.json, 186/16
.css,  229/16
.svg,  175/16
.svgz, 162/16

# templating tools used to generate
# the above www/w3c data
.shaml,  209/232
.haml,   216/232
.coffee, 217/232
.sass,   228/232
.scss,   228/232
.less,   228/232
.md,     218/232
.markdown, 218/232

# programming languages, and reated stuff
.bash, 002
.sh,   002
.csh,  002

# stuff that should not be as visible
.bak,    249/17, DARK
.backup, 249/17, DARK
.o,      236/16, BOLD
.orig,   81/16, DARK

# ...maay not be supported *sigh*
#Makefile, 229/64
#Rakefile, 229/64
#Gemfile,  86/23

.log, 228/56

.exe, 40/238
.dmg, 48/236


.dircolors, 49/57

# END: autogenerated from LS_COLORS.m4
'')


divert(0)
patsubst(COLORDATA,`
',`)
XAUTOMAGIC('))
