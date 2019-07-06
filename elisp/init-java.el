;;; init-java.el --- -*- lexical-binding: t -*-
;;
;; Copyright (C) 2019 Mingde Zeng
;;
;; Filename: init-java.el
;; Description: Initialize lsp-java java-one-click-run
;; Author: Mingde (Matthew) Zeng
;; Maintainer: Mingde (Matthew) Zeng
;; Created: Thu Jul  4 21:26:24 2019 (-0400)
;; Version: 2.0.0
;; Package-Requires: shell-mode
;; Last-Updated: Fri Jul  5 16:59:31 2019 (-0400)
;;           By: Mingde (Matthew) Zeng
;; URL: https://github.com/MatthewZMD/.emacs.d
;; Keywords: M-EMACS .emacs.d lsp-java java-one-click-run
;; Compatibility: emacs-version >= 26.1
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; This initializes lsp-java and java-one-click-run
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(eval-when-compile
  (require 'init-const))

;; LSPJavaPac
(when *mvn*
  (use-package lsp-java
    :after lsp-mode
    :init
    (use-package request :defer t)
    :config
    (setq
     lsp-java-server-install-dir (expand-file-name "~/.emacs.d/eclipse.jdt.ls/server/")
     lsp-java-workspace-dir (expand-file-name "~/.emacs.d/eclipse.jdt.ls/workspace/"))))
;; -LSPJavaPac

;; JavaOneClickRunPac
(use-package java-one-click-run
  :load-path "~/.emacs.d/site-elisp/java-one-click-run/"
  :bind ("<f5>" . java-one-click-run))
;; -JavaOneClickRunPac

(provide 'init-java)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-java.el ends here