const fs = require("fs");
const symlinks = require("./symlinks.json");
const chalk = require("chalk");

const PREFIX = process.env.PATH_PREFIX ?? "/Users/tmikeschutte";

const log = {
  error: (...msgs) => console.error(chalk.black.bgRedBright(...msgs)),
  success: (...msgs) => console.log(chalk.black.bgGreenBright(...msgs)),
  info: (...msgs) => console.info(chalk.black.bgBlueBright(...msgs)),
};

/**
 * @returns string
 */
const format = (path) => path.slice(-30).padStart(30, " ");

const main = () => {
  log.info("Making symlinks\n");

  Object.entries(symlinks).forEach(([symbol, source]) => {
    try {
      fs.symlinkSync(`${PREFIX}/${source}`, `${PREFIX}/${symbol}`, "file");
      log.success(`${format(symbol)} -> ${format(source)}`);
    } catch (err) {
      if (err.message.includes("EEXIST")) {
        log.info(`exists: ${format(symbol)} -> ${format(source)}`);
        return;
      }
      log.error(err.message);
    }
  });

  log.info("\nAll done.");
};

main();
