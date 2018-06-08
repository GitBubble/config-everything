##  STEP1: INSTALL  
  
- bash config.h  
  
  notes:
  
    * don't care about the warning when install .go ahead


##  STEP2: Create Project  
- enter your project directory  
- bash import_symbol.sh
- start vim

##  HELP
 
- ctrl+n   : toggle nerdtree    
- enter    : toggle symbol list  
- cs find <tab> : find file or symbol in source  
   -- cs find s : find symbol    
   -- cs find g : find global     
   -- cs find f : find file
- ctrl+w   : switch between window
- tmux : open tmux (support mouse action)
   Notes:
     * tmux att # : attach current session
     * ctrl+b  ,  : rename current window
     * ctrl+b  h/j/k/l: switch pane to left/up/down/right
     * ctrl+b  %  : split tmux to left-right pane
     * ctrl+b  "  : split tmux to up-down pane
     * ctrl+b  p  : switch to previous window
     * ctrl+b  n  : switch to next window
     * ctrl+b  c  : create a new window
     * ctrl+b  d  : dettach from current session
     * ctrl+b     :  kill-server : kill all tmux servers
     * exit       : kill current window
     * ctrl+b &   : kill current window
     * ctrl+b f   : find text in current window
     * ctrl+b space : switch default layout : even-horizontal、even-vertical、main-horizontal、main-vertical、tiled
     * ctrl+b q   : display sequence id of current pane in current window
     * ctrl+b ctrl+o : transpose the current pane
     * ctrl+b .   : rename the index in the pane
     * ctrl+b w   : list all window and switch your target

## UPDATE

- 2018/6/8: add new feature  when swith between vim window use ctrl+w
  
  notes:
     * line number display in the active window will use "hybrid mode" other than insert mode ; 
     * line number display in the non-active window will use "absolute mode"  ;
     * line number display in the active window will use "absolute line mode" in the insert mode "
            
           
