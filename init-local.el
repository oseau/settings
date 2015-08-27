(menu-bar-mode -1)
(scroll-bar-mode -1)
(disable-theme 'zenburn)
(prelude-require-package 'color-theme-sanityinc-solarized)
(require 'color-theme-sanityinc-solarized)
(color-theme-sanityinc-solarized--define-theme light)
;;(setq prelude-theme 'solarized-dark)
;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier 'super)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start maximized


(key-chord-define-global "ee" 'er/expand-region)
(key-chord-define-global "pp" 'beginning-of-defun)
(key-chord-define-global "nn" 'end-of-defun)
(key-chord-define-global "jk" 'avy-goto-word-1)

;; highlight-symbol
(prelude-require-package 'highlight-symbol)
(require 'highlight-symbol)
(highlight-symbol-nav-mode)
(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(add-hook 'org-mode-hook (lambda () (highlight-symbol-mode)))
(setq highlight-symbol-idle-delay 0.2
      highlight-symbol-on-navigation-p t
      highlight-symbol-foreground-color "color-21")

(global-set-key (kbd "M-n") 'highlight-symbol-next)
(global-set-key (kbd "M-p") 'highlight-symbol-prev)
(global-set-key (kbd "M-,") 'anaconda-nav-pop-marker)

(prelude-require-package 'highlight-indentation)
(require 'highlight-indentation)
(add-hook 'python-mode-hook (lambda () (highlight-indentation-mode)))

(prelude-require-package 'multiple-cursors)
(global-set-key (kbd "M-N") 'mc/mark-next-like-this)
(global-set-key (kbd "M-P") 'mc/mark-previous-like-this)

(prelude-require-package 'pyenv-mode)
(pyenv-mode)

(global-set-key (kbd "C--") 'undo-tree-undo)

(provide 'init-local)
;;; init-local.el ends here
