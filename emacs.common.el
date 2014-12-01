;; Basic Setup

;; Suppress backup files
(setq make-backup-files nil)

;; Tab width is 4. This controls how tabs are *displayed*.
(setq-default tab-width 4)

;; This controls the behavior of M-i
(setq tab-stop-list
      '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76))
(setq c-default-style "k&r")

;; fixes indentations
(setq-default c-basic-offset 4)

;; misc.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq-default cursor-type 'box)

;; Fullscreen functionality
(defun fullscreen (&optional f)
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
             '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
             '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(fullscreen)

;; before save hooks
; Delete Trailing Whitespaces On Save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
; Untabify Current Buffer On Save
(add-hook 'before-save-hook (lambda () (untabify (point-min) (point-max))))

;; bidi support
(setq-default bidi-display-reordering t)
