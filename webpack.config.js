const path = require("path");

module.exports = {
  resolve: {
    extensions: [".tsx", ".ts", ".jsx", ".js", ".json"]
  },
  entry: './src/index.tsx',
  output: {
    path: path.join(__dirname, 'public'),
    filename: 'bundle.js',
  },
  module: {
    rules: [
      {
          test: /\.(ts|tsx)$/,
          use: [
            {
              loader: "ts-loader",
            }
          ]
      },
    ],
  }
}