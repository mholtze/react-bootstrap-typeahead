
: Initial compile of CSS file
call .\node_modules\.bin\node-sass scss\Typeahead.scss css\Typeahead.css --output-style expanded

: Build example file for development
call .\node_modules\.bin\webpack -w --progress --colors --config webpack\webpack.config.example.js
