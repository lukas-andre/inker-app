echo 'Starting server...'
yarn --cwd /Users/Ihenry/Lucas/inker/inker-back start:detach
echo 'Server started'
echo 'Creating tunnel'
yarn --cwd /Users/Ihenry/Lucas/inker/inker-back tunnel:dev
echo 'Press Ctrl+C to stop'