const fs = require('fs')
const symlinks = require("./symlinks.json")
const chalk = require("chalk")

const log = {
error: (...msgs) => console.error(chalk.black.bold.bgRedBright(...msgs)),
success: (...msgs) => console.log(chalk.black.bold.bgGreenBright(...msgs)),
info: (...msgs) => console.info(chalk.black.bold.bgGreenBright(...msgs))
}

const main = () => {
  log.info("Creating symlinks")
  Object.entries(symlinks).forEach(([link, symbol]) => {
    try {
      fs.symlinkSync(symbol, link, "file")
      log.success(`Created link from ${symbol} to ${link}`)
    } catch (err) {
      log.error(err.toString())
    }
  })
log.info("All done.")
}

main()
