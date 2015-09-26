# dotfiles

## download

```sh
git clone https://github.com/laughingMan/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

## install EVERYTHING

```sh
script/all
```

## just install OSX defaults

```sh
script/set-osx-defaults
```

## just install programs & settings

```sh
script/install
```

## just install simlinks

```sh
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

## update EVERYTHING
`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

```sh
bin/dot
```
