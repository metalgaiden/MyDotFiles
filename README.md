# MyDotFiles

Other things to do:
  * run arnadr and setup both monitors
  * edit .profile with defaults and these three lines
  setxkbmap -option caps:swapescape
  sleep 2
  ./.screenlayout/<arandr_script>.sh
  * if you need to auto mount a drive:
  * create /mnt/ssd and find your external drive name
  * add this line to FSTAB (careful here, know how to boot to terminal in case)
  /dev/<drive_name> /mnt/ssd ntfs defaults,nls=utf8,umask=000,dmask=027,fmask=137,uid=1000,gid=1000,windows_names 0 0
