Inner Mini Browser for [NyaoVim](https://github.com/rhysd/NyaoVim)
==================================================================

This is [NyaoVim](https://github.com/rhysd/NyaoVim) UI plugin to open an embedded browser in window.

![screenshot](https://raw.githubusercontent.com/rhysd/ss/master/nyaovim-mini-browser/main.gif)

## Installation

Install this repository as Vim plugin with your favorite plugin manager.  And put `<mini-browser>` component to your `nyaovimrc.html` as below.

```html
<style>
  /* CSS configurations here */
  .horizontal {
    display: flex;
    width: 100%;
    height: 100%;
  }
  neovim-editor {
    width: 100%;
    height: 100%;
  }
</style>

<!-- Put your component in flex box layout  -->
<div class="horizontal">
  <neovim-editor id="nyaovim-editor" argv$="[[argv]]"></neovim-editor>
  <mini-browser editor="[[editor]]"></mini-browser>
</div>
```

This is a setting example.  You can put `<mini-browser>` component as you like.

## Commands

- `:MiniBrowser [url]`: Open mini browser with specified URL.  If `url` is omitted, previous page is shown.  If you add `!` to the command, focus doesn't move after opening a browser.
- `:MiniBrowserClose`: Close mini browser.

## Keymaps In Browser

| keymap | description |
| ------ | ----------- |
| `j` | Scroll half page down |
| `k` | Scroll half page up |
| `h` | Scroll half page left |
| `l` | Scroll half page right |
| `x` | Close mini browser |
| `f` | Page goes forward |
| `b` | Page goes back |
| `r` | Reload page |

## Properties of `<mini-browser>`

You can specify `url`, `width`, `useragent`, and `visible` to the tag.

```html
<mini-browser
  url="https://google.com"
  width="600"
  useragent="...(snip)"
  visible
></mini-browser>
```

## Extend Your Usage

If you want to open a URL under cursor, adding below mapping to `init.vim` will help you.  Mapping to `<Leader>o` is an example.  You can map it to your favorite key sequence.

```vim
nnoremap <Leader>o :<C-u>MiniBrowser <C-r><C-p><CR>
```

This plugin only provides very simple commands.  You can write script to extend your usage with the commands as below.

- Open GitHub issues of current repository
- Look for a word under the cursor in online documentations
- Search something on Google Search
- Play music on SoundCloud ;)
- etc...

## License

```
Copyright (c) 2015 rhysd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
