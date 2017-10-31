(add-hook 'python-mode-hook 'indent-guide-mode)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(eval-after-load "jedi-core"
  '(progn
;;     (setq jedi:environment-virtualenv '("python" "-m" "venv"))
     (setq jedi:complete-on-dot t)
     (add-to-list 'company-backends 'company-jedi)))
