```
// MacOS only
brew install socat
brew install xquartz

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

// May need to restart to make $DISPLAY take effect
docker run --rm --name chrome --net host --cap-add SYS_ADMIN -e DISPLAY=192.168.50.12:0  jess/chrome
```
