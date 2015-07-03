;; key bindings
(provide 'keybindings_init)
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)
  )

(global-set-key (kbd "C-c x") 'eshell)
(global-set-key [(control tab)] 'tabbar-backward)
(global-set-key [(control q)] 'tabbar-forward)
(global-set-key (kbd "C-=") 'weibo-timeline)
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-x M-d") 'insert-current_time)
(global-set-key (kbd "C-c g") 'goto-line)

(require 'guru-mode)
(guru-global-mode)

(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))

(global-set-key (kbd "C-x o") 'switch-window)
