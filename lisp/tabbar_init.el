(provide 'tabbar_init)

(require 'tabbar)
(tabbar-mode 1)

;; 所有buffer都在同一组
(setq tabbar-buffer-groups-function
      (lambda () (list "All Buffers")))

(setq tabbar-buffer-list-function
      (lambda ()
        (remove-if
	 (lambda(buffer)
	   (find (aref (buffer-name buffer) 0) " *"))
	 (buffer-list))))

(set-face-attribute 'tabbar-default nil
		    :family "Mono"
		    :background "Black"
		    :foreground "Gray"
		    :height 1.0
                    )
;; 设置左边按钮外观
(set-face-attribute 'tabbar-button nil 
		    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "Black")
                    )
;; 设置当前tab外观
(set-face-attribute 'tabbar-selected nil
		    :inherit 'tabbar-default
		    :foreground "White"
		    :background "Black"
		    :weight 'bold
		    )
;; 设置非当前tab外观
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :foreground "Gray"
                    :background "Black"
                    )
