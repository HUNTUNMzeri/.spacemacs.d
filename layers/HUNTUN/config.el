(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d!)" "CANCEL(c@)")
        ))

(setq OneDrive-path (getenv "OneDrive"))
(setq OneDrive-Org-Path (concat OneDrive-path "\\org"))
(setq org-agenda-files (directory-files-recursively OneDrive-Org-Path "\.org$"))
(setq org-default-notes-file (concat OneDrive-Org-Path "\\Todo\\Todo.org"))


;(defun create-dairy-file ()
;  (let (dairy-file-path)
;    (setq dairy-file-path
;          (concat OneDrive-Org-Path "\\Dairy\\"
;                  (format-time-string "%Y-%m-%d")
;                  ".org"))
;    (if (file-exists-p dairy-file-path)
;      ()
;      ())))
;
;(setq org-capture-templates
;      '(("d" "Dairy" entry (function ))))
