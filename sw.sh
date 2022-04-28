cd ./wrapper
nodemon --exec "node server.js" ./ &
cd ../server
nodemon --exec "http-server -a 0.0.0.0 -p 4664 -c-1 -S -C the.crt -K the.key" ./ &
