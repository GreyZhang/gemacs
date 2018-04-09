(setq make-backup-files nil)
(setq visible-bell 0)
(setq inhibit-startup-screen t)
(fset 'yes-or-no-p'y-or-n-p)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-linum-mode t)
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect))
(setq-default indent-tabs-mode nil)
(defun open-my-emacs-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(setq-default indent-tabs-mode nil)
(menu-bar-mode 0)
(global-auto-revert-mode 1)
(require 'cc-mode)
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
;;set the mode enabled  
(setq semantic-default-submodes '(global-semanticdb-minor-mode  
                                  global-semantic-idle-scheduler-mode  
                                  global-semantic-idle-summary-mode  
                                  global-semantic-idle-completions-mode  
                                  global-semantic-decoration-mode  
                                  global-semantic-highlight-func-mode  
                                  global-semantic-stickyfunc-mode  
                                  global-semantic-mru-bookmark-mode  
                                  global-semantic-tag-folding-mode)) 
(semantic-mode 1)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(add-hook 'prog-mode-hook #'hs-minor-mode)
(scroll-bar-mode 0)
(global-hl-line-mode 1)



;; 
(provide 'g-emacs-comm)
