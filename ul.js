const readdirSync = require("fs").readdirSync;
const execSync = require("child_process").execSync;

const failed = readdirSync("./converted").filter((file, idx, arr) => {
  console.log(file);
  let name = file.match(/(.+)\.gif/)[1];
  const cmd = `./ul_test.sh ${name}; echo $?`;
  const ret = execSync(cmd).toString();
  if (parseInt(ret) !== 0)
    process.stderr.write(`${file} failed with code ${ret}`);
  return parseInt(ret) !== 0;
});

console.log(failed);
