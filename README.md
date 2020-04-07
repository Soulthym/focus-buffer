# focus-buffer
Simple vim plugin to toggle fullscreen for a buffer using vim's tabpage feature

## Installing
Using vim-plug:  
```
Plug 'soulthym/focus-buffer'
```

## Usage
You can focus any window using `Ctrl+w Ctrl+m` or `Ctrl+w m`: it will open your current buffer in a new tab,
essentially making it fullscreen.  
As long as you don't leave this window, you can use the same key mapping to go back to normal.
If you enter any other window however, the same keymap will treat the previously created tab as any other vim tab.

## Mappings
By default it is mapped to <c-w><c-m> (`Ctrl+w Ctrl+m`) and <c-w>m (Ctrl+w m)

NOTE: It is not mapped to <c-m> because that would interfere with the Enter key in most terminals.  
That is also the reason why you can use <c-w><CR> (Ctrl+w Enter)

Because it doesn't conflict with any built-in mappings (according to `:help index`),
you can be pretty sure you won't have to change it in the future.

### Mnemonics
You can think of it as `Ctrl+Window Maximize`

## TODO
- Make keymapping changeable
- Hide the tab-bar
