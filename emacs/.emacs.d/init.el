(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq auto-save-visited-file-name t)
(setq auto-save-interval 20)
(setq auto-save-timeout 5)
(setq make-backup-files nil)
(setq create-lockfiles nil)

