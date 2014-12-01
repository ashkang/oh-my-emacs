;; C/C++ Customizations
; autocomplete (C/C++)
(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)
(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)

;; clang-autocomplete
;; (add-to-list 'load-path (concat myoptdir "AC"))
;; (add-to-list 'ac-dictionary-directories (concat myoptdir "AC/ac-dict"))

(require 'auto-complete-clang)
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
(ac-set-trigger-key "TAB")
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
 ac-source-gtags
(my-ac-config)
(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              (split-string
               "
 /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.3/include/g++-v4
 /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.3/include/g++-v4/x86_64-pc-linux-gnu
 /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.3/include/g++-v4/backward
 /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.3/include
 /usr/local/include
 /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.3/include-fixed
 /usr/include
"               )))
(put 'scroll-left 'disabled nil)
