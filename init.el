; The following configurations is copied from spacemacs-rocks from zilongshanren.
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
(defvar my/packages '(
		      evil
		      smex
		      company
		      smartparens
		      evil-leader
		      helm
		      org-pomodoro
                      htmlize
                      evil-nerd-commenter
                      window-numbering
                      powershell
                      sound-wav
                      solarized-theme
                      hungry-delete
                      monokai-theme
                      projectile
                      neotree
                      helm-gtags
                      ggtags
                      function-args
                      sr-speedbar
                      smooth-scrolling
                      popwin
                      powerline
                      powerline-evil
                      nyan-mode
                      which-key
                      expand-region
                      dracula-theme
                      color-theme-sanityinc-tomorrow
                      rainbow-delimiters
                      aggressive-indent
                      beacon
                      anaconda-mode
                      coffee-mode
                      flycheck
                      moe-theme
                      helm-ag
                      auto-complete
                      ag
                      ) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

(add-to-list 'load-path "~/.emacs.d/g-config")
(require 'g-config)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 8)
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-xcode company-cmake company-capf company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-dabbrev)))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-tooltip-idle-delay 0)
 '(compilation-message-face (quote default))
 '(helm-M-x-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(which-key-idle-delay 0.3)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 108 :width normal)))))
