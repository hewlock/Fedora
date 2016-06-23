(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-list '(
	color-theme-solarized
	evil
	flx-ido
	ido
	ido-vertical-mode
	neotree
	org
	powerline
	projectile
	smex
	yasnippet
	))
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

(global-linum-mode t)
(setq linum-format "%3d ")

(setq default-tab-width 4)
(electric-indent-mode 1)
(set-default 'truncate-lines t)

(menu-bar-mode -1)
(set-display-table-slot standard-display-table 'vertical-border (make-glyph-code ?┃))

(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

(require 'ido)
(ido-mode 1)
(ido-everywhere 1)

(require 'flx-ido)
(flx-ido-mode 1)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-first-match-face nil
                    :background nil
                    :foreground "#268bd2")

(require 'smex)
(smex-initialize)

(require 'neotree)
(setq neo-show-hidden-files t)
(setq neo-smart-open t)
(setq neo-theme 'arrow)
(setq neo-window-width 40)
(setq projectile-switch-project-action 'neotree-projectile-action)
(add-hook 'neotree-mode-hook
	(lambda ()
		(define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
		(define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(require 'powerline-minimal-vim-theme)
(powerline-minimal-vim-theme)

(require 'projectile)
(projectile-global-mode)

(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(require 'yasnippet)
(yas-global-mode 1)

(require 'org)

(global-set-key (kbd "C-@") 'projectile-find-file)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "TAB") 'self-insert-command)
