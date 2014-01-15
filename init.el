(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/plugins")

;; 用'y/n/p' 代替 'yes/no/p'
(fset 'yes-or-no-p 'y-or-n-p)
;; 默认窗口大小
(set-frame-width (selected-frame) 90)
(set-frame-height (selected-frame) 38)
;; 禁用工具栏
(tool-bar-mode 0)
;; 禁用菜单
(menu-bar-mode 0)
;; 禁用滚动条
(set-scroll-bar-mode nil)
(global-font-lock-mode t)

;; 编辑设置
(require 'edit_init)
;; 按键绑定设置
(require 'keybindings_init)
;; eshell设置
(require 'eshell_init)
;; tabbar设置
(require 'tabbar_init)

;; mode-line 设置
(require 'smart-mode-line)
(if after-init-time (sml/setup)
  (add-hook 'after-init-hook 'sml/setup))

(require 'switch-window)
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

(setq default-directory "~/")
(setq inhibit-startup-message t)

;; 主题设置
(load-file "~/.emacs.d/plugins/themes/monokai-theme.el")
(load-theme 'monokai t)

(set-frame-font "Cosmic Sans Neue Mono 14")

(desktop-save-mode 1)
