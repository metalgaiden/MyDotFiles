# MyDotFiles

Other things to do:
  * run arnadr and setup both monitors
  * setup wallpaper with nitrogen
  * edit .profile with defaults and these four lines:

setxkbmap -option caps:swapescape

sleep 2

./.screenlayout/<arandr_script>.sh

nitrogen --restore

  * if you need to auto mount a drive:
  * create /mnt/ssd and find your external drive name
  * add this line to FSTAB (careful here, know how to boot to terminal in case)
  
/dev/<drive_name> /mnt/ssd ntfs-3g defaults,x-gvfs-show    0   0

for steam support make a compatdata folder in steamapps, delete the one from the ssd and run:
$ ln -s ~/.steam/steam/steamapps/compatdata /mnt/ssd/<steam_directory>/steamapps/

after pulseaudio is installed change the i3 config commented lines
set the volume to 0 and run:
sudo alsactl store
