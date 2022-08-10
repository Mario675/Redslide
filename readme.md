# Redslide
A simple bash program.

In short: it redirects the partial slider output to the mapped output (0-100 to kelvin temps), then pipes to redshift, ultimatly pipping redshift output to null (So that `using randar` doesn't spam your terminal).


Uses following dependencies:
- bash
- sh
- zenity (Gui Interface)
- xargs (arguments | xargs command)
- redshift
- bc (Basic calculator)

Using the `which` command will help you check these. Output should be the listed path of these files. If one is not there, then install using your package manager.
```bash
which bash sh zenity xargs redshift bc
```

## Install
Just put it in your bin folder, or anywhere, I guess. I put mine here:
```
~/.bin/
```

Give yourself permisson to execute the file:
```bash
chmod u+x redslide.sh
```

Then edit your `~/.bashrc` to add an alias.
```bash
alias 'rs'='sh PATH_TO_SCRIPT/redslide.sh
```
## To adjust ranges
Modify low2, and high2, to your choosing.
```bash
low2=1500;high2=6500;
```