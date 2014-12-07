;; replace last sexp
(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))

(put 'downcase-region 'disabled nil)

;; Custom Bindings
(global-set-key (kbd bd-indent-according-to-mode) 'indent-according-to-mode)
(global-set-key (kbd bd-replace-string) 'replace-string)
(global-set-key (kbd bd-replace-regexp) 'replace-regexp)
(global-set-key (kbd bd-replace-last-sexp) 'replace-last-sexp)
(global-set-key (kbd bd-compile) 'compile)
