Usage
-----
| Mode   | Default Key | `<Plug>` map                    | Description                                                               |
| ------ | ----------- | ------------------------------- | ------------------------------------------------------------------------- |
| normal | gb          | `<Plug>(go-to-buffer-forward)`  | Go to the next tab page. Wraps around from the last to the first one.     |
| normal | gB          | `<Plug>(go-to-buffer-backward)` | Go to the previous tab page. Wraps around from the first to the last one. |

Supplying a count to either <Plug>(go-to-buffer-forward) or <Plug>(go-to-buffer-backward) will go to the {count} buffer.

Customization
-------------
Example:
```vim
nmap <Right> <Plug>(go-to-buffer-forward)
nmap <Left> <Plug>(go-to-buffer-backward)
```
