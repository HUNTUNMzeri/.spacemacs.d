(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d!)" "CANCEL(c@)")
        ))

(setq OneDrive-path (getenv "OneDrive"))
(setq OneDrive-Org-Path (concat OneDrive-path "\\org"))
(setq org-agenda-files (list OneDrive-Org-Path))
(setq org-default-notes-file (concat OneDrive-Org-Path "\\Todo.org"))
