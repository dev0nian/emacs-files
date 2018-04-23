(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages (quote (company slime evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'evil)
(evil-mode t)

(setq inferior-lisp-program "/usr/local/bin/clisp")
(setq slime-contribs '(slime-fancy))
;; Enable company mode is all buffers
(add-hook 'after-init-hook 'global-company-mode)
;; Custom key mappings
(global-set-key (kbd "<S-return>") 'evil-force-normal-state)
;; Disable system sound for various actions
(setq visible-bell 1)
(tool-bar-mode -1)
;; Save session
(desktop-save-mode 1)
;; Highlight current line
(global-hl-line-mode 1)
