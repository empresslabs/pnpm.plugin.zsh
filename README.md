<p align="center">
  <a href="#gh-dark-mode-only" target="_blank" rel="noopener noreferrer">
    <img src=".github/assets/night.svg" alt="pnpm.plugin.zsh">
  </a>

  <a href="#gh-light-mode-only" target="_blank" rel="noopener noreferrer">
    <img src=".github/assets/day.svg" alt="pnpm.plugin.zsh">
  </a>
</p>

Plugin for aliases and completions for `pnpm` package manager.

## Installation

#### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

```shell
git clone https://github.com/empresslabs/pnpm.plugin.zsh.git $ZSH_CUSTOM/plugins/pnpm
```

```shell
~/.zshrc
plugins=(... pnpm)
```

#### [zinit](https://github.com/zdharma-continuum/zinit)

```shell
zinit light empresslabs/pnpm.plugin.zsh
```

#### [zi](https://github.com/z-shell/zi)

```shell
zi light empresslabs/pnpm.plugin.zsh
```

#### [zgenom](https://github.com/jandamm/zgenom)

```shell
zgenom load empresslabs/pnpm.plugin.zsh
```

#### [zplug](https://github.com/zplug/zplug)

```shell
zplug empresslabs/pnpm.plugin.zsh
```

## Settings

#### Use plugin-defined completions or pnpm's built-in completions

```shell
zstyle ":empresslabs:pnpm:completion" legacy-completion yes
```

Add this line to your `~/.zshrc` file to use the plugin-defined completions. If you prefer to use pnpm's built-in completions, remove this line.

## Aliases

| Alias | Command                              | Description                                                                   |
| ----- | ------------------------------------ | ----------------------------------------------------------------------------- |
| pn    | `pnpm`                               | The _`pnpm`_ command                                                          |
| pnx   | `pnpm dlx`                           | Fetch a package, load it and run command                                      |
| pna   | `pnpm add`                           | Install a package in dependencies (`package.json`)                            |
| pnad  | `pnpm add --save-dev`                | Install a package in devDependencies (`package.json`)                         |
| pnap  | `pnpm add --save-peer`               | Install a package in peerDependencies (`package.json`)                        |
| pnb   | `pnpm run build`                     | Run the build script defined in `package.json`                                |
| pnd   | `pnpm run dev`                       | Run the dev script defined in `package.json`                                  |
| pnga  | `pnpm add --global`                  | Install packages globally on your operating system                            |
| pngls | `pnpm list --global`                 | Lists global installed packages                                               |
| pngrm | `pnpm remove --global`               | Remove global installed packages from your OS                                 |
| pngu  | `pnpm update --global`               | Upgrade packages installed globally to their latest version                   |
| pnh   | `pnpm help`                          | Show help for a _`pnpm`_ command                                              |
| pnau  | `pnpm audit`                         | Checks for known security issues with the installed packages                  |
| pnwhy | `pnpm why`                           | Shows the packages that depend on given package                               |
| pni   | `pnpm init`                          | Interactively creates or updates a `package.json` file                        |
| pnin  | `pnpm install`                       | Install dependencies defined in `package.json`                                |
| pnun  | `pnpm uninstall`                     | Uninstall dependencies defined in `package.json`                              |
| pnln  | `pnpm run lint`                      | Run the lint script defined in `package.json`                                 |
| pndoc | `pnpm run doc`                       | Run the doc script defined in `package.json`                                  |
| pnls  | `pnpm list`                          | List installed packages                                                       |
| pnout | `pnpm outdated`                      | Check for outdated package dependencies                                       |
| pnrm  | `pnpm remove`                        | Remove installed packages                                                     |
| pnrun | `pnpm run`                           | Run a defined package script                                                  |
| pns   | `pnpm run serve`                     | Start the dev server                                                          |
| pnst  | `pnpm start`                         | Run the start script defined in `package.json`                                |
| pnt   | `pnpm test`                          | Run the test script defined in `package.json`                                 |
| pntc  | `pnpm test --coverage`               | Run the test script defined in `package.json` with coverage                   |
| pnui  | `pnpm update --interactive`          | Prompt for which outdated packages to upgrade                                 |
| pnuil | `pnpm update --interactive --latest` | Prompt for which outdated packages to upgrade to the latest available version |
| pnup  | `pnpm update`                        | Upgrade packages to their latest version                                      |
| pnsv  | `pnpm server`                        | Manage a _`pnpm`_ store server                                                |
| pnpub | `pnpm publish`                       | Publishes a package to the registry                                           |
| pnset | `pnpm setup`                         | Sets up pnpm                                                                  |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
