MUSIC_PATH=~/Downloads/whatever-music.mp3 
WHITELIST=(conda pip sleep)

function capture_command() { 
  case "$BASH_COMMAND" in
        $PROMPT_COMMAND)
          ;;
       *)
           for cmd in ${WHITELIST[@]}; do
               if [[ $BASH_COMMAND == $cmd* ]] ;
               then
                  afplay $MUSIC_PATH &
                  export MUSIC_PID=$!
                fi
           done
  esac
}

function cleanup() { kill $MUSIC_PID 2>/dev/null ; }

trap capture_command DEBUG
PROMPT_COMMAND=cleanup
