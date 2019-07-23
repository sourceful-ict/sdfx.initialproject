const { exec } = require('child_process');

exec('sfdx force:source:push --json', (err, stdout, stderr) => {
  if (err) {
    // node couldn't execute the command
    return;
  }

  const obj = JSON.parse(stdout);
  let result = ``;
  // the *entire* stdout and stderr (buffered)

  if (typeof obj.result.pushedSource !== 'undefined') {
        obj.result.pushedSource.map(el => {
            result += `${el.type} - ( ${el.state} ) - ${el.fullName}  - ${el.filePath}`
        })
  }

  
  console.log(`------------------------------------------------------------------------`)
  console.log(`STATUS: ${obj.status}`)
  console.log(`------------------------------------------------------------------------`)
  console.log(`Result: `)
  console.log(result)
});