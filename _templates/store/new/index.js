module.exports = {
  prompt: ({ inquirer }) =>
    inquirer.prompt([
      {
        type: 'input',
        name: 'path',
        message: 'Select your store directory.',
        default: 'src/store'
      }
    ])
}
