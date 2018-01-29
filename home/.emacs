;; .emacs

(package-initialize)

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'auto-mode-alist '("\\.eb\\'" . python-mode))

(global-set-key (kbd "C-x g") 'magit-status)

;(setq-default indent-tabs-mode nil)

(require 'fuzzy-format)
(setq fuzzy-format-default-indent-tabs-mode nil)
(global-fuzzy-format-mode t)

(setq-default fill-column 78)

(setq-default show-trailing-whitespace 't)
(setq-default indicate-empty-lines 't)

; try not to use tab characters ever when formatting code
(setq-default indent-tabs-mode nil)

(setq-default require-final-newline 'ask)
(setq-default mode-require-final-newline 'ask)

(setq-default indicate-buffer-boundaries 'left)

(require 'uniquify)
(setq-default uniquify-buffer-name-style 'post-forward-angle-brackets)

(setq-default iswitchb-mode 't)

(load-theme 'nimbus t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("585dca5436f6cda805fbd8c31618a4bd9e741c9e97ad5e06ebd066ce42af21fb" default)))
 '(diff-switches "-u")
 '(package-selected-packages
   (quote
    (nimbus-theme magit lua-mode fuzzy-format confluence)))
 '(require-final-newline (quote ask)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added ((((type tty)) (:foreground "green"))))
 '(magit-diff-added-highlight ((((type tty)) (:foreground "LimeGreen"))))
 '(magit-diff-context-highlight ((((type tty)) (:foreground "default"))))
 '(magit-diff-file-heading ((((type tty)) nil)))
 '(magit-diff-removed ((((type tty)) (:foreground "red"))))
 '(magit-diff-removed-highlight ((((type tty)) (:foreground "IndianRed"))))
 '(magit-section-highlight ((((type tty)) nil))))
