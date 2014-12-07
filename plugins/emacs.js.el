;; Javascript Customizations

;; js autocomplete
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; (setq ac-js2-evaluate-calls t)
(autoload 'js3-mode "js3" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
;; (add-hook 'js-mode-hook (lambda () (auto-complete-mode t)))
;; (add-hook 'js-mode-hook (lambda () (tern-mode t)))

(add-hook 'js3-mode-hook (lambda () (auto-complete-mode t)))
(add-hook 'js3-mode-hook (lambda () (tern-mode t)))
