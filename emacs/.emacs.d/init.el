(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq package-list '(color-theme-solarized))
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(setq auto-save-visited-file-name t)
(setq auto-save-interval 20)
(setq auto-save-timeout 5)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(load-theme 'solarized t)
(setq frame-background-mode 'dark)
