;; key bindings
(provide 'keybindings_init)
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)
  (global-set-key (kbd "M-RET") 'ns-toggle-fullscreen) 
  )

(global-set-key (kbd "C-x C-x") 'eshell)
(global-set-key [(control tab)] 'tabbar-backward)
(global-set-key [(control q)] 'tabbar-forward)
(global-set-key (kbd "C-=") 'weibo-timeline)

;(global-set-key [(control f3)] 'highlight-symbol-at-point)
;(global-set-key [f3] 'highlight-symbol-next')
;(global-set-key [(shiftf f3)] 'highlight-symbol-prev)
;(global-set-key [(meta f3)] 'highlight-symbol-prev)
