(provide 'edit_init)
;; 禁用光标闪烁
(blink-cursor-mode -1)
(transient-mark-mode 1)
;; 光标显示为竖线
(setq-default cursor-type 'bar)
;; 用点标记空格 美元号标记过行
(require 'whitespace)
(whitespace-turn-on)
;;(global-whitespace-mode t)
;; 高亮当前行
(require 'highlight-current-line)
(highlight-current-line-on t)
(set-face-background 'highlight-current-line-face "black")
;; 对应闭符号高亮显示
(show-paren-mode 1)

;; 自动补全括号
(electric-pair-mode)

;; 高亮光标处变量名
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(global-set-key (kbd "C-,") 'ahs-edit-mode)

