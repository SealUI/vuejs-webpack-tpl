require('./check-versions')()

process.env.NODE_ENV = 'ceshi'

var ora = require('ora')
var rm = require('rimraf')
var path = require('path')
var chalk = require('chalk')
var webpack = require('webpack')
var config = require('../config')
var webpackConfig = require('./webpack.ceshi.conf')

var success = chalk.bold.green;

var spinner = new ora({
  text:success('开始构建 [ 测试环境 ]...'),
  spinner:"dots"
})

spinner.start()

rm(path.join(config.ceshi.assetsRoot, config.ceshi.assetsSubDirectory), err => {
  if (err) throw err
  webpack(webpackConfig, function (err, stats) {
    spinner.stop()
    if (err) throw err
    process.stdout.write(stats.toString({
      colors: true,
      modules: false,
      children: false,
      chunks: false,
      chunkModules: false
    }) + '\n\n')

    cconsole.log('---------------------------------')
    spinner.succeed(success('  [ 测试环境 ] 构建完成.'));
    console.log('---------------------------------\n')

  })
})
