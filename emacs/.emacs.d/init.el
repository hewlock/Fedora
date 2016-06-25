(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-list '(
	color-theme-solarized
	evil
	helm
	helm-projectile
	neotree
	org
	powerline
	projectile
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

(require 'helm-config)
(helm-mode 1)
(set-face-attribute 'helm-header nil :foreground "black" :background "brightcyan" :weight 'bold)
(set-face-attribute 'helm-selection nil :foreground "brightred" :background "white" :weight 'bold)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)
(setq helm-split-window-in-side-p t)

(require 'neotree)
(set-face-attribute 'neo-banner-face nil :foreground "brightcyan")
(set-face-attribute 'neo-dir-link-face nil :foreground "blue")
(set-face-attribute 'neo-expand-btn-face nil :foreground "blue")
(set-face-attribute 'neo-file-link-face nil :foreground "brightcyan")
(set-face-attribute 'neo-header-face nil :foreground "brightcyan")
(set-face-attribute 'neo-root-dir-face nil :foreground "brightcyan")
(setq neo-show-hidden-files t)
(setq neo-smart-open nil)
(setq neo-theme 'arrow)
(setq neo-window-width 40)
(setq projectile-switch-project-action 'neotree-projectile-action)
(add-hook 'neotree-mode-hook
	(lambda ()
		(define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
		(define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
(defun neotree-toggle-project ()
	"Toggle show the NeoTree window."
	(interactive)
	(if (neo-global--window-exists-p)
		(neotree-hide)
		(neotree-dir (projectile-project-root))))

(require 'powerline-minimal-vim-theme)
(powerline-minimal-vim-theme)

(require 'projectile)
(projectile-global-mode)

(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(require 'yasnippet)
(yas-global-mode 1)

(require 'org)

(global-set-key (kbd "C-x C-f") 'helm-projectile)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x f") 'helm-projectile-ack)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "M-x") 'helm-M-x)
;(global-set-key (kbd "C-@ C-f") 'projectile-find-file)
;(global-set-key (kbd "C-@ C-g") 'projectile-grep)
;(global-set-key (kbd "C-@ C-o") 'neotree-find)
;(global-set-key (kbd "C-@ C-p") 'neotree-toggle-project)
;(global-set-key (kbd "TAB") 'self-insert-command)
