(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme")

;; 用'y/n/p' 代替 'yes/no/p'
(fset 'yes-or-no-p 'y-or-n-p)
;; 禁用工具栏
(tool-bar-mode -1)
(global-font-lock-mode t)
(set-frame-font "Mono 14")

;; 编辑设置
(require 'edit_init)
;; 按键绑定设置
(require 'keybindings_init)
;; eshell设置
(require 'eshell_init)
(require 'python)
(require 'org-install)

;; 显示时间
(display-time-mode 1)
;; 24时格式
(setq display-time-24hr-format t)
;; 显示日期
(setq display-time-day-and-data t)
;; 标题栏设置
(setq frame-title-format "Jactry@MacbookPro %b")
;; 显示行数
(setq column-number-mode t)
(setq auto-saving nil)
;; 左侧标行
(setq line-number-mode t)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
;; color-theme设置
(load-theme' solarized-dark t)
