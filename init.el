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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-xcode company-cmake company-capf company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-dabbrev)))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
    ("f0c98535db38af17e81e491a77251e198241346306a90c25eb982b57e687d7c0" default)))
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (evil)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
