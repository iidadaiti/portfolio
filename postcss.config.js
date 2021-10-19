const postcssImport = require('postcss-import')
const autoprefixer = require('autoprefixer')
const cssnano = require('cssnano')

module.exports = () => ({
  plugins: [
    postcssImport({}),
    autoprefixer({ overrideBrowserslist: 'last 2 versions' }),
    cssnano({ preset: 'advanced' })
  ]
})
