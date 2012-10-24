(provide 'auto-complete_init)

(add-to-list 'load-path "~/.emacs.d/auto-complete")

(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.eamcs.d/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)
(require 'auto-complete-yasnippet)

(require 'yasnippet)
(yas-global-mode 1)
(setq yas-sinnpet-dirs '("~/.emacs.d/snippets/"))
