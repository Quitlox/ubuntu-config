# Ubuntu Setup

## Directory Structure

```
directory structure:
~/Documents/workspace
~/Documents/applications/git
    Applications built from source
~/Documents/applications/local
    binaries of applications
        with symlinks to /usr/local/bin
```

## Ubuntu Settings to set Manually


*Set Chromium as Default Browser*
```
Settings > Default Applications > Web Browser
	Set to Chromium
```

*Add English Keyboard layout*
```
Settings > Region & Language > Input Sources
	English(US, intl., with dead keys)
```

*Update default shortcuts*
```
# ibus-setup
	Disable the "Ctrl+Shift+e" shortcut for "Emoiji Keyboard" (Interferes with Terminator)
```

*Configure SSH*
```
gitlab.utwente.nl
git.ia.utwente.nl
github.com
gitlab.com
```