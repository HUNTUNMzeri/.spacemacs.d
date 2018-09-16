;;; packages.el --- HUNTUN layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <huntu@HUNTUN-PC>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `HUNTUN-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `HUNTUN/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `HUNTUN/pre-init-PACKAGE' and/or
;;   `HUNTUN/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst HUNTUN-packages
  '(pyim
    pyim-basedict
    posframe)

      


"The list of Lisp packages required by the HUNTUN layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")
(defun HUNTUN/init-pyim-basedict ()
  (use-package pyim-basedict
    :ensure nil
    :config (pyim-basedict-enable))
)

(defun HUNTUN/init-posframe ()
  (use-package posframe)
)

(defun HUNTUN/init-pyim ()
  (use-package pyim
  :ensure nil
  :demand t
  :config

  (setq default-input-method "pyim")

  (setq-default pyim-english-input-switch-functions
                '(pyim-probe-dynamic-english
                  pyim-probe-isearch-mode
                  pyim-probe-program-mode
                  pyim-probe-org-speed-commands))
  (setq-default pyim-punctuation-half-width-functions
                '(pyim-probe-punctuation-line-beginning
                  pyim-probe-punctuation-after-punctuation))

  (setq pyim-page-tooltip 'posframe)

  (setq pyim-page-length 3)

  (add-hook 'emacs-startup-hook
            #'(lambda () (pyim-restart-1 t)))
  )

  (spacemacs/set-leader-keys "d" 'pyim-convert-code-at-point) 
)
;;; packages.el ends
;;; here
