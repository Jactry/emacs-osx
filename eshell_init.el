(provide 'eshell_init)

;;(setq shell-file-name "/usr/bin/zsh")
;; 命令别名
(setq eshell-aliases-file "~/.emacs.d/eshell/alias")
;; eshell中'em'打开文件
(defalias 'em 'find-file)

;; 高亮
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

;; 提示符设置         
(setq
      eshell-prompt-regexp      "^[^#$\n]* [#>]+ "
      eshell-prompt-function    (lambda nil
                                  (concat
                                   (abbreviate-file-name
                                    (eshell/pwd))
                                   (if
                                       (=
                                        (user-uid)
                                        0)
                                       " # " " >>> ")))
)

;; 补全设置
(defun pcmpl-package-cache (name)
(unless (equal name "")
(split-string (shell-command-to-string
(concat "apt-cache pkgnames " name " 2> /dev/null")))))
(defun pcomplete/sai ()
"completion for `sai'"
(while
(pcomplete-here
(pcmpl-package-cache (pcomplete-arg 'last)))))
;; 忽略大小写
(setq eshell-cmpl-ignore-case t
;; 不要循环补全
eshell-cmpl-cycle-completions nil)
