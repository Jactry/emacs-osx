(provide 'edit_init)
;; 禁用光标闪烁
(blink-cursor-mode -1)
(transient-mark-mode 1)
;; 光标显示为竖线
(setq-default cursor-type 'bar)
;; 高亮当前行
(require 'highlight-current-line)
(highlight-current-line-on t)
(set-face-background 'highlight-current-line-face "blue")
;; 对应闭符号高亮显示
(show-paren-mode)

;; 自动补全括号
;; (electric-pair-mode)
;; (setq electric-pair-pairs '(
;;                             (?\" . ?\")
;;                             (?\{ . ?\})
;;                             ) )

;; 高亮光标处变量名
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(global-set-key (kbd "C-,") 'ahs-edit-mode)

(defun insert-current_time ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S" (current-time))))

;; 用点标记空格 美元号标记过行
(require 'whitespace)
(whitespace-turn-on)
(global-whitespace-mode t)
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
(setq whitespace-display-mappings
      '(
        (newline-mark 10 [182 10]) ; 10 LINE FEED
        (tab-mark 9 [8677 9] [92 9])
        ))

(add-to-list 'load-path "~/.emacs.d/lisp/plugins/smartparens/")
(require 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)

;; scroll functions
(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-up 1)
    (line-move-to-column tmp)
    (forward-line 1)
    )
  )

;; 连续滚屏
(defun hold-line-scroll-down()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-down 1)
    (line-move-to-column tmp)
    (forward-line -1)
    )
  )

(global-set-key (kbd "M-n") 'hold-line-scroll-up)
(global-set-key (kbd "M-p") 'hold-line-scroll-down)

(require 'ido)
(ido-mode t)

(require 'smex)
(smex-initialize)

(require 'rainbow-mode)
(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(global-rainbow-mode t)

(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)


(require 'clojure-mode)
(add-hook 'clojure-mode-hook 'clojure-mode)

(setq hs-allow-nesting t)
(add-hook 'c-mode-common-hook (lambda () (hs-minor-mode 1)))
(add-hook 'emacs-lisp-mode-hook (lambda() (hs-minor-mode 1)))
(add-hook 'tcl-mode-hook (lambda () (hs-minor-mode 1)))
(global-set-key (kbd "C-c h") 'hs-hide-block)
(global-set-key (kbd "C-c s") 'hs-show-block)
(global-set-key (kbd "C-c , h") 'hs-hide-all)
(global-set-key (kbd "C-c , s") 'hs-show-all)

(add-to-list 'load-path "~/.emacs.d/lisp/plugins/")
(autoload 'ace-jump-mode "ace-jump-mode"
  "Emacs quick move minor mode" t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
