;; Python Customizations
; Python autocomplete
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;(add-hook 'python-mode-hook
;          (function (lambda ()
;                      (setq indent-tabs-mode nil
;                            tab-width 4))))
