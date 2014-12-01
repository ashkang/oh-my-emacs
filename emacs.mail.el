;; Mail Setup
(setq nnml-directory "~/.tidmmail")
(setq message-directory "~/.tidmmail")

;; gnus
 (setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\”]\”[#’()]")
 (setq gnus-select-method
      '(nnimap "tidm"
               (nnimap-address "imap.tidm.ir")
               (nnimap-server-port 993)))

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.tidm.ir" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.tidm.ir" 25 "ashkan@tidm.ir" nil))
      smtpmail-default-smtp-server "smtp.tidm.ir"
      smtpmail-smtp-server "smtp.tidm.ir"
      smtpmail-smtp-service 25
      starttls-use-gnutls t
      smtpmail-local-domain "tidm.ir")
