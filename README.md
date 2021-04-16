# JokeCLI

Welcome to the Joksters CLI! This CLI allows you to hear a two-part joke from one of the two categories that you choose. When requested to see the list of jokes, you will be able to choose between either a Pun or a Programming joke. After picking the category, the first part of the joke will be displayed. You will be prompted to press "?" to view the second part of the joke. The user will also have the option to pick another joke category or to exit. 

## Installation

To install it yourself:

```$ gem install joke_cli```

To run the program:

```$ ruby bin/run```

## Usage

Start by typing ruby bin/run

Once the welcome message appears, it will ask the user to type their name. 

The program will then ask the user if they would like to see a list of jokes. The user will be asked to type "yes" to see the category list, or "exit" to exit.

    - If the user typed "yes", the category list will be printed out. 
    The user will need to type the desired joke category to view the first part of the joke. 
    To view the second part of the joke, the user will be asked to type "?".
    The user has the option to choose from the category list again, or  to exit.

    - If the user typed "exit", an exit message will appear and you will be exited out of the CLI.

## Contributing 

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/joke_cli. This project is intended to be a safe, welcoming space for collaboration, and release, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

