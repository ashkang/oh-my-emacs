;; Projectile Customizations
; projectile
(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd bd-projectile-find-file) 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd bd-projectile-switch-to-buffer) 'projectile-switch-to-buffer)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(require 'go-projectile)
