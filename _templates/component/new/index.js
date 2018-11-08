module.exports = {
  prompt: ({ inquirer }) =>
    inquirer
      .prompt([
        {
          type: 'list',
          name: 'kind',
          message: 'What kind of component are you generating?',
          choices: ['Base', 'Modules']
        }
      ])
      .then(({ kind }) =>
        inquirer.prompt([
          {
            type: 'input',
            name: 'path',
            message: 'Select a directory to store your component.',
            default: `src/components/${kind}`
          },
          {
            type: 'input',
            name: 'name',
            message: 'Choose a name for your new component.'
          }
        ])
      )
}
