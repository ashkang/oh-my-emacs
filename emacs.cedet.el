;; CEDET Setup

;; Setting Load Paths
(load-user-file "configs/emacs.cedetload.el")

; CEDET Customization
(semantic-mode 1)
; (semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
(global-srecode-minor-mode 1)              ; Enable template insertion menu
(global-semanticdb-minor-mode)
(global-semantic-mru-bookmark-mode)
(global-cedet-m3-minor-mode)
(global-semantic-highlight-func-mode)
(global-semantic-stickyfunc-mode)
(global-semantic-decoration-mode)
(global-semantic-idle-local-symbol-highlight-mode)
(global-semantic-idle-scheduler-mode)
(global-semantic-idle-completions-mode)
(global-semantic-idle-summary-mode)
(semantic-load-enable-gaudy-code-helpers)
(semanticdb-enable-gnu-global-databases 'c++-mode)

(require 'semantic/ia)
(require 'semantic/bovine/gcc)
(require 'semantic/bovine/c)
(require 'semantic/bovine/clang)
(require 'cedet-files)
(require 'eassist)
(require 'semantic/analyze/debug)

;; (define-key (current-global-map) (kbd ".") 'semantic-complete-self-insert)
;; (define-key (current-global-map) "." 'semantic-complete-analyze-inline)
(define-key (current-global-map) (kbd "M-<RET>") 'semantic-ia-complete-symbol-menu)

(setq-mode-local c++-mode
                 semanticdb-find-default-throttle
                 '(project unloaded system recursive))
