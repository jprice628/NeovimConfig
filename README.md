# NeovimConfig

## Prerequisites

### Ripgrep
Provides grep-like capabilities for Telescope
```
winget install BurntSushi.ripgrep.MSVC
```

### Sharkdp
Advanced file system entry finder for Telescope.
```
winget install sharkdp.fd
```

### Zig
c compiler used by Tree-Sitter (Because my copy of MinGW/gcc is old and bound 
to another application).
```
winget install zig.zig
```
> **Note**: Takes 15 minutes to unzip.

## Nerd Fonts
Fonts that contain added glyphs needed by Neo-Tree.
```
https://www.nerdfonts.com/font-downloads
```
The Cousine font is good. Download. Unzip the CousineNerdFontMono-Regular.ttf 
file (You don't need the others), right-click, and select install.

## Treesitter Network Issues
If you experience network issues with Treesitter when starting Neovim, try 
these two things:

1. Open .\lua\plugins\treesitter.lua, and change the `prefer_git` flag to true.
```
require 'nvim-treesitter.install'.prefer_git = true
```
Note, this has been deprecated, so it may not work forever.

2. Create a file named `.curlrc`, and save it in your %userprofile% directory. 
Add the following line to the file, save it, and restart Neovim.
```
--ssl-no-revoke
```
Caution: This disables curl's certificate revocation detection. There are 
risks involved.
