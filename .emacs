(add-to-list 'load-path "~/emacs/")
(add-to-list 'load-path "~/emacs/ensime_2.9.1-0.7.6/elisp/")
(add-to-list 'load-path
              "~/emacs/yasnippet-0.6.1c/")
(add-to-list 'load-path "~/emacs/scala-mode")

(require 'haml-mode)
(require 'yasnippet) ;; not yasnippet-bundle
(require 'scala-mode-auto)
;; Load the ensime lisp code...
(require 'ensime)


(yas/initialize)
(yas/load-directory "~/emacs/yasnippet-0.6.1c/snippets")
(setq yas/my-directory "~/emacs/scala-mode/contrib/yasnippet/snippets")
(yas/load-directory yas/my-directory)
(add-hook 'scala-mode-hook
	  '(lambda ()
	     (yas/minor-mode-on)
	     ))
;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; MINI HOWTO:
;; Open .scala file. M-x ensime (once per project)

(add-hook 'haml-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(setq-default show-trailing-whitespace t)
(setq-default column-number-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
