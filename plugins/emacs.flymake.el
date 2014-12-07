;; Flymake Customizations
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
