(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (jedi buffer-move company elscreen elscreen-separate-buffer-list helm helm-c-yasnippet helm-elscreen helm-flycheck indent-guide init-loader magit shackle cmake-mode haskell-mode js2-mode lua-mode markdown-mode matlab-mode rust-mode scala-mode toml-mode typescript-mode web-mode yaml-mode clang-format rtags cmake-ide py-autopep8 flycheck-pyflakes company-jedi racer)))
 '(rust-format-on-save t)
 '(rust-rustfmt-bin "~/.cargo/bin/rustfmt"))

(setq init-loader-show-log-after-init nil)
(init-loader-load)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
