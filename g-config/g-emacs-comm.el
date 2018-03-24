(setq make-backup-files nil)
(setq visible-bell 0)
(setq inhibit-startup-screen t)
(fset 'yes-or-no-p'y-or-n-p)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-linum-mode t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect))
(setq-default indent-tabs-mode nil)
(provide 'g-emacs-comm)

