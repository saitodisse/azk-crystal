const webpack = require('webpack');
const path = require('path');

// require('dotenv').config({path: '.env'});

const plugins = [
  new webpack.DefinePlugin({
    'process.env': {
      'NODE_ENV': JSON.stringify(process.env.NODE_ENV),
    }
  })
];

if (process.env.NODE_ENV === 'production') {
  // plugins.push(new webpack.optimize.UglifyJsPlugin({ compress: { warnings: false } }));
}

module.exports = {
  entry: path.resolve('src', 'main.js'),
  output: {
    path: path.resolve('dist'),
    publicPath: '',
    filename: 'main.js'
  },
  module: {
    loaders: [{
      test: /\.js?$/,
      exclude: /node_modules/,
      loader: 'babel',
      query: {
        presets: ['react', 'es2015', 'stage-0'],
        plugins: [
          ['module-alias', [
            { 'src': 'src', 'expose': '~' },
          ]],
        ],
      }
    }]
  },
  plugins: plugins
};

