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
;; (global-whitespace-mode t)

;; cc-mode with semantic
;; cc-mode with semantic
 (require 'cc-mode)
;; (require 'semantic)
;; (global-semanticdb-minor-mode 1)
;; (global-semantic-idle-scheduler-mode 1)
;; ;;set the mode enabled
;; (setq semantic-default-submodes '(global-semanticdb-minor-mode
;;                                   global-semantic-idle-scheduler-mode
;;                                   global-semantic-idle-summary-mode
;;                                   global-semantic-idle-completions-mode
;;                                   global-semantic-decoration-mode
;;                                   global-semantic-highlight-func-mode
;;                                   global-semantic-stickyfunc-mode
;;                                   global-semantic-mru-bookmark-mode
;;                                   global-semantic-tag-folding-mode))
;; (semantic-mode 1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))
(add-hook 'prog-mode-hook #'hs-minor-mode)
(scroll-bar-mode 0)
(global-hl-line-mode 1)
(setq auto-save-default nil)
;;; activate and deactivate ecb
(global-set-key (kbd "C-x C-;") 'ecb-activate)
(global-set-key (kbd "C-x C-'") 'ecb-deactivate)
(global-set-key (kbd "C-u") 'evil-scroll-up)
;;; show/hide ecb window
(global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
(global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)
;;; quick navigation between ecb windows
(global-set-key (kbd "C-)") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-!") 'ecb-goto-window-directories)
(global-set-key (kbd "C-@") 'ecb-goto-window-sources)
(global-set-key (kbd "C-#") 'ecb-goto-window-methods)
(global-set-key (kbd "C-$") 'ecb-goto-window-compilation)
;;; replacement for built-in ecb-deactive, ecb-hide-ecb-windows and
;;; ecb-show-ecb-windows functions
;;; since they hide/deactive ecb but not restore the old windows for me
(defun tmtxt/ecb-deactivate ()
  "deactive ecb and then split emacs into 2 windows that contain 2 most recent buffers"
  (interactive)
  (ecb-deactivate)
  (split-window-right)
  (switch-to-next-buffer)
  (other-window 1))
(defun tmtxt/ecb-hide-ecb-windows ()
  "hide ecb and then split emacs into 2 windows that contain 2 most recent buffers"
  (interactive)
  (ecb-hide-ecb-windows)
  (split-window-right)
  (switch-to-next-buffer)
  (other-window 1))
(defun tmtxt/ecb-show-ecb-windows ()
  "show ecb windows and then delete all other windows except the current one"
  (interactive)
  (ecb-show-ecb-windows)
  (delete-other-windows))
(global-set-key (kbd "C-x C-'") 'tmtxt/ecb-deactivate)
(global-set-key (kbd "C-;") 'tmtxt/ecb-show-ecb-windows)
(global-set-key (kbd "C-'") 'tmtxt/ecb-hide-ecb-windows)

;;
(provide 'g-emacs-comm)
