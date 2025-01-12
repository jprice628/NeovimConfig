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
> **Note**: Takes ~15 minutes to unzip.

## Nerd Fonts
Fonts that contain added glyphs needed by Neo-Tree. You may already have
completed this step if you went through the Prelude setup
(https://github.com/jprice628/Prelude/blob/main/README.md).
```
https://www.nerdfonts.com/font-downloads
```
The Cousine font is good. Download. Unzip the CousineNerdFontMono-Regular.ttf 
file (You don't need the others), right-click, and select install. Once the
font is installed, select it in the Windows Terminal settings.

## Treesitter Network Issues
If you experience network issues with Treesitter when starting Neovim, try 
these two things:

1. Open .\lua\plugins\treesitter.lua, and change the `prefer_git` flag to true.
```
require 'nvim-treesitter.install'.prefer_git = true
```
Note, this has been deprecated, so it may not work forever.

2. Create a file named `.curlrc`, and save it in your user profile directory 
(`$env:userprofile` if using Powershell or `%userprofile%` if using command
prompt). Add the following line to the file, save it, and restart Neovim.
```
--ssl-no-revoke
```
Caution: This disables curl's certificate revocation detection. There are 
risks involved.

## LUA Debugging
When debugging, it can be helpful to create a command that prints something.
Adding the code below to the init.lua file will add a 'ShowDataPath' command
that prints Neovim's data path when invoked.
```
vim.api.nvim_create_user_command(
    "ShowDataPath",
    function()
        print(vim.fn.stdpath("data"))
    end,
    {})
```

## Quick Fix / CDO
https://www.youtube.com/watch?v=kK1L1o13xGE
