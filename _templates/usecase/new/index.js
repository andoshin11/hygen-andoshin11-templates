module.exports = {
  prompt: ({ inquirer }) =>
    inquirer.prompt([
      {
        type: 'input',
        name: 'path',
        message: 'Select a directory to store your usecase.',
        default: 'src/usecases'
      },
      {
        type: 'input',
        name: 'name',
        message:
          'Choose a name for your new usecase.(example: FetchItemUseCase)'
      }
    ])
}
