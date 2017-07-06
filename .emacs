(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq line-move-visual nil)
(blink-cursor-mode 0)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'use-package)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq font-latex-fontify-script nil)
(setq font-latex-fontify-sectioning 1.0)

;;(global-linum-mode 1)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key (kbd "C-x g") 'magit-status)

;;(require 'linum-relative)
;;(linum-relative-on)

(use-package dired-ranger
	     :ensure t
	     :bind (:map dired-mode-map
			 ("W" . dired-ranger-copy)
			 ("X" . dired-ranger-move)
			 ("Y" . dired-ranger-paste)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-mocha)))
 '(custom-safe-themes
   (quote
    ("85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" default)))
 '(package-selected-packages
   (quote
    (base16-theme use-package org magit linum-relative dired-ranger auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
