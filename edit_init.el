(provide 'edit_init)
;; 禁用光标闪烁
(blink-cursor-mode -1)
(transient-mark-mode 1)
;; 光标显示为竖线
(setq-default cursor-type 'bar)
;; 对应闭符号高亮显示
(show-paren-mode 1)

;; 符号补全  
(setq skeleton-pair-alist  
      '((?\" _ "\"" >)
        (?\' _ "\'" >)
        (?\( _ ")" >)
        (?\[ _ "]" >)
        (?\{ _ "}" >)))
(setq skeleton-pair t)
(global-set-key (kbd "\"")  'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'")  'skeleton-pair-insert-maybe)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{")  'skeleton-pair-insert-maybe)

;; 高亮光标处变量名
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(global-set-key (kbd "C-,") 'ahs-edit-mode)

