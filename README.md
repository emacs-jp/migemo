# migemo.el ![](https://github.com/emacs-jp/migemo/workflows/CI/badge.svg)

migemo.el provides Japanese increment search with 'Romanization of Japanese'(ローマ字).


## screenshot

![migemo-screenshot](images/migemo.png)


## Requirements

* Emacs 25 or higher.
* [cmigemo](https://github.com/koron/cmigemo) or [CVS Head migemo](http://0xcc.net/migemo/)
  * We recommend to use cmigemo. It is default since version 1.9.2

## Sample Configuration

```lisp
(require 'migemo)

;; cmigemo(default)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))

;; ruby migemo
(setq migemo-command "ruby")
(setq migemo-options '("-S" "migemo" "-t" "emacs" "-i" "\a"))

;; Set your installed path
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(migemo-init)
```
