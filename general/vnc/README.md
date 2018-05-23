# config-steps
## install X graphical service 
   - sudo apt-get install x-window-system-core
   - sudo apt-get install gem
   - sudo apt-get install ubuntu-desktop
   
  also if you like gnome-desktop
  
  - sudo apt-get install ubuntu-gnome-desktop -y
  - sudo apt-get install gnome-panel
   
## install VNC server service
   - sudo apt-get install vnc4server
   
## modify the file
    modify the xstartup file located in  ~/.vnc/
	
## you might want to supress the annoying warnings

   add  host resolve entry to your etc/hosts file
   
   such as:
   
      10.21.147.111 myPcName
