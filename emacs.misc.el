;; replace last sexp
(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))

(put 'downcase-region 'disabled nil)

;; Custom Bindings
(global-set-key (kbd "C-'") 'indent-according-to-mode)
(global-set-key (kbd "C-#") 'replace-string)
(global-set-key (kbd "C-$") 'replace-regexp)
(global-set-key (kbd "C-%") 'replace-last-sexp)
(global-set-key (kbd "C-^") 'compile)

;; Custom Bindings (Mac)
;; (global-set-key (kbd "C-'") 'indent-according-to-mode)
;; (global-set-key (kbd "C-#") 'replace-string)
;; (global-set-key (kbd "C-$") 'replace-regexp)
;; (global-set-key (kbd "C-%") 'replace-last-sexp)
;; (global-set-key (kbd "A-§") 'compile)
