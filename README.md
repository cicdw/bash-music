# bash-succession
CLI utility for playing an arbitrary mp3 anytime you run a bash function for the duration of the function call.

To use:
- download an mp3 (e.g., the Succession theme song or the Jeopardy track)
- update the `MUSIC_PATH` variable in the `setup.sh` file to the location of your downloaded file
- either `source` the file or add it to your `~/.bashrc`
- update the `WHITELIST` with whatever commands you prefer

*Note*: if you don't like seeing the terminated message, run `set +m` to suppress it
