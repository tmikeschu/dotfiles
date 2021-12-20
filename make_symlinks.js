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
const format = (path, { offset = 0 } = { offset: 0 }) =>
  path.slice(-40 + offset).padStart(40 - offset, " ");

const main = () => {
  log.info("Making symlinks\n");

  Object.entries(symlinks).forEach(([symbol, source]) => {
    try {
      fs.symlinkSync(`${PREFIX}/${source}`, `${PREFIX}/${symbol}`, "file");
      log.success(`${format(symbol)} -> ${format(source)}`);
    } catch (err) {
      if (err.message.includes("EEXIST")) {
        const prefix = "exists: ";
        log.info(
          `${prefix}${format(symbol, { offset: prefix.length })} -> ${format(
            source
          )}`
        );
        return;
      }
      log.error(err.message);
    }
  });

  log.info("\nAll done.");
};

main();
