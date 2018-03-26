(setq backward-delete-char-untabify-method nil)
(defun my-c-mode-hook ()
  (setq c-basic-offset 4
	c-indent-level 4
	c-default-style "bsd"))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)
(provide 'g-c-common-mode)
