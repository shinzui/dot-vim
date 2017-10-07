## File explorer

### [vimfiler](https://github.com/Shougo/vimfiler.vim)

##### Mappings

Inside explorer:

`<space>` select the file.

## Utilities

### Narrow region

[NrrwRgn](https://github.com/chrisbra/NrrwRgn)

##### Ex commands:

`:NR` to open the selected region in a new narrowed window

`:NW` to open the current visual window in a new narrowed window



## Windows

### Choose a window

[vim-choosewin](https://github.com/t9md/vim-choosewin)

`\` to invoke choosewin


## Default keymapings in choosewin mode

| Key  | Action     | Description                   |
| ---- | ---------- | ----------------------------- |
| 0    | tab_first  | Select FIRST    tab           |
| [    | tab_prev   | Select PREVIOUS tab           |
| ]    | tab_next   | Select NEXT     tab           |
| $    | tab_last   | Select LAST     tab           |
| x    | tab_close  | Close current tab             |
| ;    | win_land   | Navigate to current window    |
| -    | previous   | Naviage to previous window    |
| s    | swap       | Swap windows               #1 |
| S    | swap_stay  | Swap windows but stay      #1 |
| <CR> | win_land   | Navigate to current window    |
|      | <NOP>      | Disable predefined keymap     |
