;; Package Setup
(require 'package)
;; marmalade
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))
