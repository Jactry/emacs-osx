(provide 'git_init)

(require 'git-gutter-fringe)
(set-face-foreground 'git-gutter-fr:modified "yellow")
(set-face-foreground 'git-gutter-fr:added    "lightblue")
(set-face-foreground 'git-gutter-fr:deleted  "lightred")
(global-git-gutter-mode t)
