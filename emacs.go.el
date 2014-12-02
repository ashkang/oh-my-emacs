;; Go Customizations
; Go autocomplete
(require 'go-autocomplete)
(add-hook 'before-save-hook #'gofmt-before-save)

;; go useful setup
(load-file __go_oracle_path__)
 (defun my-go-mode-hook ()
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd bd-godefjump) 'godef-jump))
  ; Go Oracle
  (go-oracle-mode)
 (add-hook 'go-mode-hook 'my-go-mode-hook)
