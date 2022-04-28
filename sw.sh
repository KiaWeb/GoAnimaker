# nodemon --exec "http-server -p 4664 -c-1 -S -C the.crt -K the.key"
# nodemon server.js
curl -sL https://deb.nodesource.com/setup_current.x | sudo bash -
sudo apt install nodejs
npm install nodemon
cd server
nodemon --exec "http-server -a 0.0.0.0 -p 4664 -c-1 -S -C the.crt -K the.key" ./
cd ../wrapper
nodemon --exec "node server.js" ./ &