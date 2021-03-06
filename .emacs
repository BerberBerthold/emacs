(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq line-move-visual nil)
(blink-cursor-mode 0)
(setq vc-follow-symlinks nil)

(column-number-mode 1)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'use-package)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; (setq reftex-plug-into-AUCTeX t)

(setq org-startup-truncated nil)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(global-set-key (kbd "C-x C-b") 'buffer-menu)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-latex-create-formula-image-program 'imagemagick)

(global-set-key (kbd "C-x g") 'magit-status)

(require 'dired)
(use-package dired-ranger
	     :ensure t
	     :bind (:map dired-mode-map
			 ("W" . dired-ranger-copy)
			 ("X" . dired-ranger-move)
			 ("Y" . dired-ranger-paste)))

(pdf-tools-install)

; (setq mail-host-address "strato.de")
(setq user-full-name "Berthold Lorke")
(setq user-mail-adress "berthold@lorke.de")

(autoload 'notmuch "notmuch" "notmuch mail" t)

(require 'erc)

;;(autoload 'notmuch "notmuch" "notmuch mail" t)
;;(require 'notmuch)


(setq font-latex-fontify-script nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face))))
 '(font-latex-sectioning-2-face ((t (:inherit font-latex-sectioning-3-face))))
 '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face))))
 '(font-latex-sectioning-4-face ((t (:inherit font-latex-sectioning-5-face))))
 '(font-latex-sectioning-5-face ((t (:foreground "yellow" :weight bold))))
 '(font-latex-slide-title-face ((t (:inherit font-lock-type-face :weight bold))))
 '(font-latex-subscript-face ((t nil)))
 '(font-latex-superscript-face ((t nil))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex --synctex=1")
 '(TeX-source-correlate-method (quote auto))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "PDF Tools")
     (output-html "xdg-open"))))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (gruvbox-dark-medium)))
 '(custom-safe-themes
   (quote
    ("3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "a33858123d3d3ca10c03c657693881b9f8810c9e242a62f1ad6380adf57b031c" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" default)))
 '(package-selected-packages
   (quote
    (pdf-tools weechat gruvbox-theme use-package org magit dired-ranger auctex)))
 '(send-mail-function (quote sendmail-send-it))
 '(weechat-latex-image-program (quote imagemagick)))

