;; Node.js Customizations
(require 'nodejs-repl)
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))
