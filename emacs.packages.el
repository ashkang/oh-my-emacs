;; Package Setup
(require 'package)
(package-initialize)
;; marmalade
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (not package-archive-contents) (package-refresh-contents))
