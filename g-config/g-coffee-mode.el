;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
;; This gives you a tab of n spaces
(custom-set-variables '(coffee-tab-width 8))
(setq coffee-indent-tabs-mode t)



(provide 'g-coffee-mode)
