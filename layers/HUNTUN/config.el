(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d!)" "CANCEL(c@)")
        ))
(setq org-export-preserve-breaks t)
(setq org-export-with-toc nil)

(setq OneDrive-path (getenv "OneDrive"))
(setq OneDrive-Org-Path (concat OneDrive-path "\\org"))
(setq org-agenda-files (directory-files-recursively OneDrive-Org-Path "\.org$"))
(setq org-default-notes-file (concat OneDrive-Org-Path "\\Todo\\Todo.org"))


(setq dairy-file-path
      (concat OneDrive-Org-Path "\\Diary\\"
              (format-time-string "%Y-%m-%d")
              ".org"))
(if (file-exists-p dairy-file-path)
    ()
  (write-region "" nil dairy-file-path))


(setq org-capture-templates
      '(("d" "Dairy" entry (file dairy-file-path)
         "* %? %i\n %U\n")))
