;; The following configurations is copied from spacemacs-rocks from zilongshanren.
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
                ;; --- Auto-completion ---
                company
                ;; --- Better Editor ---
                hungry-delete
                ivy
                ;; swiper
                ;; counsel
                smartparens
                ;; --- Themes ---
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

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))



;;********************************************************************************
;; ivy configurations
(ivy-mode 1)


;;********************************************************************************
;; Common emacs configurations
(setq make-backup-files nil)
(global-linum-mode t)
(global-hl-line-mode t)
(setq visible-bell 0)
(setq inhibit-startup-screen t)
(setq cursor-in-non-selected-windows nil)
(setq delete-old-versions t)
(show-smartparens-global-mode t)
(scroll-bar-mode 0)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(defun open-my-emacs-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(fset 'yes-or-no-p 'y-or-n-p)
(setq auto-save-default nil)
;; I love TAB! However, Emacs seems not kind to it!
(setq-default indent-tabs-mode nil)
(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect))


;;********************************************************************************
;; undo-tree configurations
(global-undo-tree-mode)
(add-to-list 'load-path "~/.emacs.d/packages/goto-chg")


;;********************************************************************************
;; goto-chg configurations
(require 'goto-chg)


;;********************************************************************************
;; company configurations
(global-company-mode t)


;;********************************************************************************
;; smartparens configurations
(require 'smartparens-config)
(smartparens-global-mode t)


;;********************************************************************************
;; theme selection
;; (load-theme 'solarized-light t)


;;********************************************************************************
;; C/C++ language configurations
;; Use TAB itself as indent method in C/C++
(setq backward-delete-char-untabify-method nil)
(defun my-c-mode-hook ()
  (setq c-basic-offset 4
	c-indent-level 4
	c-default-style "bsd"))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)


;;********************************************************************************
;; smex configurations
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;;********************************************************************************
;; helm configurations
(require 'helm-config)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)


;;********************************************************************************
;; Org mode configurations
(setq org-src-fontify-natively t)
(require 'htmlize)
(require 'org-pomodoro)
(global-set-key (kbd "<f2>") 'org-pomodoro)
(defun open-my-todo-list ()
  (interactive)
  (find-file "~/task.org"))
(global-set-key (kbd "<f1>") 'open-my-todo-list)


;;********************************************************************************
;; dired mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(require 'dired-x)
(setq dired-dwin-target 1)


;;********************************************************************************
;; recentf configurations
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)


;;********************************************************************************
;; window-numbering configurations
(window-numbering-mode 1)


;;********************************************************************************
;; Evil configurations
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)


;;********************************************************************************
;; evil-leader
(require 'evil-leader)
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
  "pf" 'project-find-file
  "w/" 'split-window-right
  )

;;********************************************************************************
;; hungry-delete configurations
(require 'hungry-delete)
(global-hungry-delete-mode)


;;********************************************************************************
;; which-key configurations
(which-key-mode 1)


;;********************************************************************************
;; Configurations generated automatically.
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
 '(compilation-message-face (quote default))
 '(evil-leader/leader "SPC")
 '(menu-bar-mode nil)
 '(nil nil t)
 '(package-selected-packages
   (quote
	(window-numbering which-key evil-nerd-commenter hungry-delete org-pomodoro evil-leader htmlize helm smex solarized-theme monokai-theme smartparens company undo-tree)))
 '(tool-bar-mode nil)
 '(which-key-idle-delay 0.1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
