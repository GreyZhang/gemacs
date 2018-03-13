(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq make-backup-files nil)
(global-linum-mode t)
(global-hl-line-mode t)
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(global-undo-tree-mode)
(add-to-list 'load-path "~/.emacs.d/packages/goto-chg")
(require 'goto-chg)
(setq visible-bell 0)
(global-company-mode t)
(require 'smartparens-config)
(smartparens-global-mode t)
(load-theme 'monokai t)
(setq inhibit-startup-screen t)
(setq cursor-in-non-selected-windows nil)
(setq delete-old-versions t)
(show-smartparens-global-mode t)
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 50))
(scroll-bar-mode 0)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-xcode company-cmake company-capf company-files
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-dabbrev)))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (monokai-theme smartparens company undo-tree)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
