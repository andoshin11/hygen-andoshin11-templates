module.exports = {
  prompt: ({ inquirer }) =>
    inquirer.prompt([
      {
        type: 'input',
        name: 'path',
        message: 'Select a directory to store your entity.',
        default: 'src/entities'
      },
      {
        type: 'input',
        name: 'name',
        message: 'Choose a name for your new entity.'
      }
    ])
}
