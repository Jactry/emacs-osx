(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/plugins")
;; 用'y/n/p' 代替 'yes/no/p'
(fset 'yes-or-no-p 'y-or-n-p)
;; 默认窗口大小
(set-frame-width (selected-frame) 90)
(set-frame-height (selected-frame) 38)
;; 禁用工具栏
(tool-bar-mode -1)
;; 禁用滚动条
(set-scroll-bar-mode nil)
(global-font-lock-mode t)
(set-frame-font "Menlo 14")

;; 编辑设置
(require 'edit_init)
;; 按键绑定设置
(require 'keybindings_init)
;; eshell设置
(require 'eshell_init)
;; tabbar设置
(require 'tabbar_init)
(require 'python)
(require 'org-install)
(require 'cedet)

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
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/plugins/themes/color-theme-molokai.el")
(color-theme-molokai)

;; weibo 设置
(add-to-list 'load-path "~/.emacs.d/plugins/weibo")
(require 'weibo)

;; auto-complete 设置
(require 'auto-complete_init)

;; Markdown 模式
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
