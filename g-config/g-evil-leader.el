(require 'evil-leader)
(setq evil-leader/leader "SPC")
(global-evil-leader-mode)
(evil-leader/set-key
  "ff" 'helm-find-files
  "fed" 'open-my-emacs-init-file
  "SPC" 'helm-M-x
  "fr" 'helm-recentf
  "fj" 'dired-jump
  "cl" 'evilnc-comment-or-uncomment-lines
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "4"  'select-window-4
  "pf" 'projectile-find-file
  "w/" 'split-window-right
  "w-" 'split-window-below
  ;; "pj" 'projectile-find-tag
  "pj" 'helm-etags-select
  "pk" 'projectile-kill-buffers
  "pD" 'projectile-dired
  "pss" 'projectile-ag
  "psg" 'projectile-grep
  "pG" 'projectile-regenerate-tags
  "xdw" 'whitespace-cleanup
  "fT" 'neotree-toggle)
(provide 'g-evil-leader)
