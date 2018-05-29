const emojis = require("./emojis.json");
const execSync = require("child_process").execSync;

const failed = emojis.filter((e, idx, arr) => {
  const cmd = `curl ${e[2]} -o dl/${e[0]}.${e[1]} 1>&2 2>/dev/null; echo $?`;
  const ret = execSync(cmd).toString();
  if (parseInt(ret) !== 0)
    process.stderr.write(`${e[0]} failed with code ${ret}`);
  return parseInt(ret) !== 0;
});

console.log(failed);
