;; parameters for ubuntu and cmigemo package
(when (and (executable-find "cmigemo")
           (file-exists-p "/usr/share/cmigemo/utf-8/migemo-dict"))
  (setq migemo-command "cmigemo"
        migemo-options '("-q" "--emacs")
        migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict"
        migemo-user-dictionary nil
        migemo-regex-dictionary nil
        migemo-coding-system 'utf-8-unix))

(migemo-init)

(provide 'setup-migemo-test)
