# dotfiles

First, create the Chezmoi config file:

```bash
touch ~/.config/chezmoi/chezmoi.toml
```

Update its contents with the following:

```toml
[data]
  email = "replace@me.com"
```

To set up Chezmoi and dotfiles on a new machine, run:

```bash
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply mikefowler
```

## Software

Any of the following can be installed by running `brew install --cask [name]`:

- [visual-studio-code](https://code.visualstudio.com/)
- [spotify](http://spotify.com/)
- [zoom](https://zoom.us/)
- [obsidian](https://obsidian.md/)
- [calibre](https://calibre-ebook.com/)
- [1password](https://1password.com/)
- [caffeine](https://intelliscapesolutions.com/apps/caffeine)
- [rectangle](https://rectangleapp.com/)
- [ableton-live-suite](https://www.ableton.com)
- [proton-mail](https://proton.me)
- [signal](https://signal.org)
- [whatsapp](https://whatsapp.com)
- [chatgpt](https://chatgpt.com/)
- [transmission](https://transmissionbt.com/)
- [soulseek](https://www.slsknet.org/)
- [logi-options+](https://www.logitech.com/en-us/software/logi-options-plus.html)
- [focusrite-control](https://focusrite.com/en)
