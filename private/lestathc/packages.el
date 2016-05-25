;;; packages.el --- lestathc layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Cong Hui
;; URL: https://github.com/lestathc/spacemace-private-layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `lestathc-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `lestathc/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `lestathc/pre-init-PACKAGE' and/or
;;   `lestathc/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst lestathc-packages
  '(
    angular-mode
    auto-yasnippet
    dart-mode
    yasnippet

    (local-conf :location local)
    )
  )

;; >>>>>>>> angular-mode <<<<<<<<
;; <<<<<<<< angular-mode >>>>>>>>

;; >>>>>>>> auto-yasnippet <<<<<<<<

(defun lestathc/post-init-auto-yasnippet ()
  (setq aya-persist-snippets-dir (concat user-emacs-directory "private/snippets/"))
  )

;; <<<<<<<< auto-yasnippet >>>>>>>>

;; >>>>>>>> dart-mode <<<<<<<<

(defun lestathc/init-dart-mode ()
  (require 'dart-mode)
  )

(defun lestathc/post-init-dart-mode ()
  (setq dart-enable-analysis-server nil)
  (add-hook 'dart-mode-hook 'flycheck-mode)
  )

;; <<<<<<<< dart-mode >>>>>>>>

;; >>>>>>>> yasnippet <<<<<<<<

(defun lestathc/post-init-auto-yasnippet ()
  (with-eval-after-load 'yasnippet
    (add-to-list 'yas-snippet-dirs (concat user-emacs-directory "private/snippets/")))
  )

;; <<<<<<<< yasnippet >>>>>>>>

;; >>>>>>>> local-conf <<<<<<<<

(defun lestathc/init-local-conf ()
  (require 'local-conf)
  (setq -local-conf-debug t)
  (setq local-conf-load-parent t)
  (add-hook 'find-file-hook
            'local-conf--load-buffer-local-conf)
  )

;; <<<<<<<< local-conf >>>>>>>>

;;; Packages.El Ends here
