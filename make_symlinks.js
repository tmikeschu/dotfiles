const fs = require("fs");
const symlinks = require("./symlinks.json");
const chalk = require("chalk");

const log = {
  error: (...msgs) => console.error(chalk.black.bgRedBright(...msgs)),
  success: (...msgs) => console.log(chalk.black.bgGreenBright(...msgs)),
  info: (...msgs) => console.info(chalk.black.bgBlueBright(...msgs)),
};

const main = () => {
  log.info("Making symlinks");

  existing = [];
  Object.entries(symlinks).forEach(([symbol, source]) => {
    try {
      fs.symlinkSync(source, symbol, "file");
      log.success(`Created link from ${source} to ${symbol}`);
    } catch (err) {
      if (err.message.includes("EEXIST")) {
        existing.push(symbol.replace("/Users/tmikeschutte/", ""));
        return;
      }
      log.error(err.message);
    }
  });

  if (existing.length > 0) {
    log.info(`\nLinks already existed for: ${existing.join("\n")}\n`);
  }
  log.info("All done.");
};

main();
