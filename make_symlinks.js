const fs = require("fs");
const symlinks = require("./symlinks.json");
const chalk = require("chalk");

const log = {
  error: (...msgs) => console.error(chalk.black.bgRedBright(...msgs)),
  success: (...msgs) => console.log(chalk.black.bgGreenBright(...msgs)),
  info: (...msgs) => console.info(chalk.black.bgBlueBright(...msgs)),
};

/**
 * @returns string
 */
const stripUser = (path) =>
  path.replace("/Users/tmikeschutte/", "").slice(-30).padStart(30, " ");

const main = () => {
  log.info("Making symlinks\n");

  Object.entries(symlinks).forEach(([symbol, source]) => {
    try {
      fs.symlinkSync(source, symbol, "file");
      log.success(`${stripUser(symbol)} -> ${stripUser(source)}`);
    } catch (err) {
      if (err.message.includes("EEXIST")) {
        log.info(`exists: ${stripUser(symbol)} -> ${stripUser(source)}`);
        return;
      }
      log.error(err.message);
    }
  });

  log.info("\nAll done.");
};

main();
