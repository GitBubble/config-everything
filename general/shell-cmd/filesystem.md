# :rocket: Script Collection :rocket:
  
  The following commands were collected to ease our daily workload, which means these commands are very useful and handy , they save our many hours and helped us to pursue a more decent life. I hope you can benefit from it too. :metal:

- [x] GIT Command
- [x] Debug Command
- [x] Daily Operation 
- [x] Remote Work Environment
- [x] UnCategorized




 **GIT Command collection**
  
*  _git report error when upload big files, to solve use :_
    
 > env GIT_SSL_NO_VERIFY=true    
    
* _big binary files should be place in a submoudle repository_   
 
 > git submodule add https://github.com/eProsima/Fast-RTPS.git directoryname/subdirectoryname   
 > git add .   
 > git commit -m "submodule imported"   
 > git push -u origin master   




 **Debug Command collection**
 *  _cpu and network performance:_
 > htop
 *  _analyze the network packet:_
 > tcpdump 
 *  _trace tool 1:_
 > dtrace
 *  _trace tool 2:_
 > strace
 *  _perl script evaluation:_
 > perl -p -n -i -e
  *  _python specific version install package:_
 > python -m pip install xxx
 > python3 -m pip install xxx
 
  **Daily Operation**
  *  _comment:_
  > du -sh `ls -1d  */*` | sort -hr
  *  _:_
  > sort somelines.txt | uniq -c | sort -nr | head -20
  *  _cpu and network performance:_
  > tail -F
  *  _cpu and network performance:_
  > less +F
  *  _cpu and network performance:_
  > nc
  *  _cpu and network performance:_
  > cut
  *  _cpu and network performance:_
  > curl -OL
  *  _cpu and network performance:_
  > xargs
  *  _cpu and network performance:_
  > awk
  *  _cpu and network performance:_
  >  tzselect
  > rsync
  *  _cpu and network performance:_
  > file
  *  _cpu and network performance:_
  > most
  *  _cpu and network performance:_
  > tput
  *  _cpu and network performance:_
  > seq
  *  _cpu and network performance:_
  > tac
  *  _cpu and network performance:_
  > ctrl+r
  *  _cpu and network performance:_
  > ctrl+z
  *  _cpu and network performance:_ 
  > cat > filename <<EOF  
     line1 
      line2 
      EOF 
  *  _cpu and network performance:_  
  > cat > filename
      paste txt here
      ctrl-c
      ctrl-d


   **Remote Work Environment**
   
   *  _cpu and network performance:_  
    > screen -S awsome_sreen     
    
   *  _cpu and network performance:_  
    > stty ixoff #make ctrl+s disabled
    
   *  _cpu and network performance:_  
    > tmux  
    
   *  _cpu and network performance:_  
    > stty  #move the cursor  bold text
    
   *  _cpu and network performance:_  
    > stty sane  
    
   *  _cpu and network performance:_  
    > ssh -X
  
  
   **UnCategorized**
   
   *  _cpu and network performance:_  
   > watch
   
