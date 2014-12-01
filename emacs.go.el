;; Go Customizations
; Go autocomplete
(require 'go-autocomplete)
(define-key ac-mode-map (kbd "C-TAB") 'auto-complete)
(add-hook 'before-save-hook #'gofmt-before-save)
; go useful setup
(load-file "/home/ashkan/golang/src/code.google.com/p/go.tools/cmd/oracle/oracle.el")
(defun my-go-mode-hook ()
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v"))
  ; Godef jump key binding
  (local-set-key (kbd "C-=") 'godef-jump))
  ; Go Oracle
  (go-oracle-mode)
(add-hook 'go-mode-hook 'my-go-mode-hook)
