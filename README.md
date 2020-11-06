# chrome-headless
## To run
### Start Chrome with the remote debugging port
```
docker run --rm -d -p 9222:9222 xiuzhengli/chrome-headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222
```
navigate to ```http://localhost:9222``` in browser to check that everything is working.

### Disabled Chrome sandbox
```
docker run --rm -d -p 9222:9222 xiuzhengli/chrome-headless --no-sandbox --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222
```

### Save a screenshot to the current directory
```
docker run --rm -v $PWD:/data xiuzhengli/chrome-headless --no-sandbox --window-size=1280,1024 --screenshot http://www.google.com
```

### Set user-agent
```
docker run --rm -d -p 9222:9222 xiuzhengli/chrome-headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 \ 
--user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.50 Safari/537.36"
```
