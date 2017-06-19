(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'use-package)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq line-move-visual nil)
(blink-cursor-mode 0)
(global-linum-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key (kbd "C-x g") 'magit-status)

(require 'linum-relative)
(linum-relative-on)

(use-package dired-ranger
	     :ensure t
	     :bind (:map dired-mode-map
			 ("W" . dired-ranger-copy)
			 ("X" . dired-ranger-move)
			 ("Y" . dired-ranger-paste)))

