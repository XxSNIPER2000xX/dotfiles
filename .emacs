(setq custom-file "~/.config/emacs/.emacs.custom.el")

;; backups
(let ((backup-dir "~/.config/emacs/backups")
      (auto-saves-dir "~/.config/emacs/auto_saves/"))
  (dolist (dir (list backup-dir auto-saves-dir))
    (when (not (file-directory-p dir))
      (make-directory dir t)))
  (setq backup-directory-alist `(("." . ,backup-dir))
        auto-save-file-name-transforms `((".*" ,auto-saves-dir t))
        auto-save-list-file-prefix (concat auto-saves-dir ".saves-")
        tramp-backup-directory-alist `((".*" . ,backup-dir))
        tramp-auto-save-directory auto-saves-dir))

(setq backup-by-copying t
      delete-old-versions t
      version-control t
      kept-new-versions 3
      kept-old-version 2)

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
