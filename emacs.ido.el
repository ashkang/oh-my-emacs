;; IDO Customizations
(require 'ido)
(ido-mode t)

(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
  (defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
  (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
  (defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
    (define-key ido-completion-map (kbd bd-ido-next-match) 'ido-next-match)
    (define-key ido-completion-map (kbd bd-ido-prev-match) 'ido-prev-match))
  (add-hook 'ido-setup-hook 'ido-define-keys)
