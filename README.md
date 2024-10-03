[![Release](https://github.com/qaptivator/bite-them-back/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/qaptivator/bite-them-back/actions/workflows/release.yml)

# Bite them back!

In this overhaul mod, YOU become the BITER! Don't let that unwelcome visitor launch the rocket. You shall make your own biter colony, expand, evolutionize, and of course, have fun biting the player.

# TODO

- [x] Swap out the LICENSE to your own liking (especially change out my name for yours)
- [x] Populate the info.json file with correct values (the version field gets updated automatically)
- [x] Add the corresponding text into locale.cfg
- [] Add a thumbnail.png to the root of the repository (ideally 144x144px)
- [] Add factorio api token

# How it works

This template uses [semantic-release](https://github.com/semantic-release/semantic-release) to automate the changelog generation aswell as packaging and releasing of the mod. \
To achieve this it analyzes your commit messages to figure out what the new version should be and what to put into the changelog.
Packaging and releasing to the factorio mod portal is done with [this plugin](https://github.com/fgardt/semantic-release-factorio). \
Additionally the GitHub Action will also create a release in your repository on GitHub itself.

Once you push new commits to the main branch the release action will trigger. \
First it will analyze all commits since the last release (determined from the last tag) to figure out if a new version should be released and what version it should be. \
To make this possible you need to follow a commit message convention. The default convention this template uses is [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) with the following types:

| Commit type                 | Changelog section |
| --------------------------- | ----------------- |
| `feat` or `feature`         | `Features`        |
| `fix`                       | `Bugfixes`        |
| `perf` or `performance`     | `Optimizations`   |
| `compat` or `compatibility` | `Compatibility`   |
| `balance`                   | `Balancing`       |
| `graphics`                  | `Graphics`        |
| `sound`                     | `Sounds`          |
| `gui`                       | `Gui`             |
| `info`                      | `Info`            |
| `locale`                    | `Locale`          |
| `translate`                 | `Translation`     |
| `control`                   | `Control`         |
| `other`                     | `Changes`         |

Because a push to the main branch triggers the release action it is recommended to work on a separate branch until your work is done and then merge that branch into main to release it. \
_Or you just work locally and if you want to release you push your changes to main, up to you how you want to do it ;)_

# contributing

for each feature make a `feature` branch, then merge it with pull requests.
there will be two branches: `main` and `dev`.

- `main` is what is currently live in factorio mod portal.
- `dev` is what is currently in development.
  `feature` branches are temporary. when they get merged to `dev`, they get removed.

  use the conventional commits when making commits: `<type>: <description>`

# todo

- [x] set basic animations of player character to biter animations
- [] make a propwer idle animation
- [] make a proper gun holding animation. they require 18 directions while biter animations have 16.
- [] make the player be same character force as biters

# the ideas zone

these are my speculations on how the mod will look like. it's a random unorganized mess so dont expect much of it.<br>
<br>
you live peacefully but a ship falls down, a human being arrived to the planet. you don't think much of it, until the pollution kicks in. that's where you come in: your task is to not let the human escape. you can either destroy their entire base (every building, even the landing shipwreck), or prevent the player from launching the rocket by attacking rocket silo. if you don't destroy the base in time, you will have the last chance, last fight to enter and destroy the rocket, then you win.
