
: Delete existing dist & lib files
call .\scripts\cleanup.cmd

: Compile SCSS file to development and prod CSS files
call .\node_modules\.bin\node-sass scss\Typeahead.scss css\Typeahead.css --output-style expanded

call .\node_modules\.bin\node-sass scss\Typeahead.scss css\Typeahead.min.css --output-style compressed

: Build minified standalone version in dist
call .\node_modules\.bin\webpack --config webpack\webpack.config.js
call .\node_modules\.bin\webpack --config webpack\webpack.config.prod.js

: Build ES5 modules to lib
call .\node_modules\.bin\babel src --out-dir lib

: Build example file
call .\node_modules\.bin\webpack --config webpack\webpack.config.example.prod.js
