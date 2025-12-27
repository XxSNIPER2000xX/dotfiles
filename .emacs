(setq custom-file "~/.config/emacs/.emacs.custom.el")

;; melpa package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; fonts
(add-to-list 'default-frame-alist '(font . "Iosevka Term:weight=medium"))

;; make emacs usable
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(global-display-line-numbers-mode 1)

;; whitespace
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq-default c-basic-offset 4)
(electric-indent-mode 1)

;; theme
(setq catppuccin-flavor 'macchiato)
(load-theme 'catppuccin t)

;; tree sitter
(require 'tree-sitter)
(require 'tree-sitter-langs)
(add-hook 'c-mode-hook #'tree-sitter-mode)
(add-hook 'c-mode-hook #'tree-sitter-hl-mode)

;; nyan mode
(nyan-mode 1)

(load custom-file)
