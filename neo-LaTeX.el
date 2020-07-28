;;; neo-LaTeX.el --- latex support for neo users
;;
;; Copyright (C) 2020 Michael Wernthaler
;;
;; Author: Michael Wernthaler
;; Maintainer: Michael Wernthaler <michael.wernthaler@posteo.de>
;; Created: Juli 28, 2020
;; Modified: Juli 28, 2020
;; Version: 0.0.1
;; Keywords:
;; Package-Requires: ((emacs 26.3) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  The neo2 keyboard layout let's you type a vast number of unicode symbols.
;;  Most of the time it's useful to translate them directly into the corresponding
;;  latex functions. For this purpose neo-LaTeX offers a minor mode, that can be
;;  enabled or disabled whenever needed.
;;
;; Minimal config
;; (add-hook 'LaTeX-mode-hook 'neo-LaTeX-mode)

;;; Code:

(defvar neo-LaTeX-mode-map (make-sparse-keymap))

(define-minor-mode neo-LaTeX-mode
  "Buffer local minor mode for neo"
  :init-value nil
  :lighter " neo-LaTeX"
  :keymap neo-LaTeX-mode-map)

;; Greek lower case letters
(define-key neo-LaTeX-mode-map (kbd "ξ") (λ! (insert "\\xi")))
(define-key neo-LaTeX-mode-map (kbd "λ") (λ! (insert "\\lambda")))
(define-key neo-LaTeX-mode-map (kbd "χ") (λ! (insert "\\chi")))
(define-key neo-LaTeX-mode-map (kbd "ω") (λ! (insert "\\omega")))
(define-key neo-LaTeX-mode-map (kbd "κ") (λ! (insert "\\kappa")))
(define-key neo-LaTeX-mode-map (kbd "ψ") (λ! (insert "\\psi")))
(define-key neo-LaTeX-mode-map (kbd "γ") (λ! (insert "\\gamma")))
(define-key neo-LaTeX-mode-map (kbd "φ") (λ! (insert "\\varphi")))
(define-key neo-LaTeX-mode-map (kbd "ϕ") (λ! (insert "\\phi")))
(define-key neo-LaTeX-mode-map (kbd "ς") (λ! (insert "\\varsigma")))
(define-key neo-LaTeX-mode-map (kbd "ι") (λ! (insert "\\iota")))
(define-key neo-LaTeX-mode-map (kbd "α") (λ! (insert "\\alpha")))
(define-key neo-LaTeX-mode-map (kbd "ε") (λ! (insert "\\varepsilon")))
(define-key neo-LaTeX-mode-map (kbd "σ") (λ! (insert "\\sigma")))
(define-key neo-LaTeX-mode-map (kbd "ν") (λ! (insert "\\nu")))
(define-key neo-LaTeX-mode-map (kbd "ρ") (λ! (insert "\\rho")))
(define-key neo-LaTeX-mode-map (kbd "τ") (λ! (insert "\\tau")))
(define-key neo-LaTeX-mode-map (kbd "δ") (λ! (insert "\\delta")))
(define-key neo-LaTeX-mode-map (kbd "υ") (λ! (insert "\\upsilon")))
(define-key neo-LaTeX-mode-map (kbd "ϵ") (λ! (insert "\\epsilon")))
(define-key neo-LaTeX-mode-map (kbd "η") (λ! (insert "\\eta")))
(define-key neo-LaTeX-mode-map (kbd "π") (λ! (insert "\\pi")))
(define-key neo-LaTeX-mode-map (kbd "ζ") (λ! (insert "\\zeta")))
(define-key neo-LaTeX-mode-map (kbd "β") (λ! (insert "\\beta")))
(define-key neo-LaTeX-mode-map (kbd "μ") (λ! (insert "\\mu")))
(define-key neo-LaTeX-mode-map (kbd "ϱ") (λ! (insert "\\varrho")))
(define-key neo-LaTeX-mode-map (kbd "ϑ") (λ! (insert "\\vartheta")))
(define-key neo-LaTeX-mode-map (kbd "θ") (λ! (insert "\\theta")))
  ;; Greek upper case letters
(define-key neo-LaTeX-mode-map (kbd "Ξ") (lambda! (insert "\\Xi")))
(define-key neo-LaTeX-mode-map (kbd "Λ") (lambda! (insert "\\Lambda")))
(define-key neo-LaTeX-mode-map (kbd "Ω") (lambda! (insert "\\Omega")))
(define-key neo-LaTeX-mode-map (kbd "Ψ") (lambda! (insert "\\Psi")))
(define-key neo-LaTeX-mode-map (kbd "Γ") (lambda! (insert "\\Gamma")))
(define-key neo-LaTeX-mode-map (kbd "Φ") (lambda! (insert "\\Phi")))
(define-key neo-LaTeX-mode-map (kbd "Δ") (lambda! (insert "\\Delta")))
(define-key neo-LaTeX-mode-map (kbd "Θ") (lambda! (insert "\\Theta")))
(define-key neo-LaTeX-mode-map (kbd "Π") (lambda! (insert "\\Pi")))
(define-key neo-LaTeX-mode-map (kbd "Σ") (lambda! (insert "\\Sigma")))
  ;; Mathematical symbols
(define-key neo-LaTeX-mode-map (kbd "¬") (λ! (insert "\\neg")))
(define-key neo-LaTeX-mode-map (kbd "∨") (λ! (insert "\\lor")))
(define-key neo-LaTeX-mode-map (kbd "∧") (λ! (insert "\\land")))
(define-key neo-LaTeX-mode-map (kbd "⊥") (λ! (insert "\\bot")))
(define-key neo-LaTeX-mode-map (kbd "∡") (λ! (insert "\\measuredangle")))
(define-key neo-LaTeX-mode-map (kbd "∥") (λ! (insert "\\|")))
(define-key neo-LaTeX-mode-map (kbd "→") (λ! (insert "\\to")))
(define-key neo-LaTeX-mode-map (kbd "∞") (λ! (insert "\\infty")))
(define-key neo-LaTeX-mode-map (kbd "∝") (λ! (insert "\\propto")))
(define-key neo-LaTeX-mode-map (kbd "∅") (λ! (insert "\\emptyset")))
(define-key neo-LaTeX-mode-map (kbd "√") (λ! (insert "\\sqrt")))
(define-key neo-LaTeX-mode-map (kbd "ℂ") (λ! (insert "\\mathbb{C}")))
(define-key neo-LaTeX-mode-map (kbd "ℚ") (λ! (insert "\\mathbb{Q}")))
(define-key neo-LaTeX-mode-map (kbd "∘") (λ! (insert "\\circ")))
(define-key neo-LaTeX-mode-map (kbd "⊂") (λ! (insert "\\subset")))
(define-key neo-LaTeX-mode-map (kbd "∫") (λ! (insert "\\int")))
(define-key neo-LaTeX-mode-map (kbd "∀") (λ! (insert "\\forall")))
(define-key neo-LaTeX-mode-map (kbd "∃") (λ! (insert "\\exists")))
(define-key neo-LaTeX-mode-map (kbd "∈") (λ! (insert "\\in")))
(define-key neo-LaTeX-mode-map (kbd "ℕ") (λ! (insert "\\mathbb{N}")))
(define-key neo-LaTeX-mode-map (kbd "ℝ") (λ! (insert "\\mathbb{R}")))
(define-key neo-LaTeX-mode-map (kbd "∂") (λ! (insert "\\partial")))
(define-key neo-LaTeX-mode-map (kbd "∇") (λ! (insert "\\nabla")))
(define-key neo-LaTeX-mode-map (kbd "∪") (λ! (insert "\\cup")))
(define-key neo-LaTeX-mode-map (kbd "∩") (λ! (insert "\\cap")))
(define-key neo-LaTeX-mode-map (kbd "ℵ") (λ! (insert "\\aleph")))
(define-key neo-LaTeX-mode-map (kbd "ℤ") (λ! (insert "\\mathbb{Z}")))
(define-key neo-LaTeX-mode-map (kbd "⇐") (λ! (insert "\\Leftarrow")))
(define-key neo-LaTeX-mode-map (kbd "⇔") (λ! (insert "\\Leftrightarrow")))
(define-key neo-LaTeX-mode-map (kbd "⇒") (λ! (insert "\\Rightarrow")))
(define-key neo-LaTeX-mode-map (kbd "↦") (λ! (insert "\\mapsto")))
  ;; Misc
(define-key neo-LaTeX-mode-map (kbd "¹") (λ! (insert "^1")))
(define-key neo-LaTeX-mode-map (kbd "²") (λ! (insert "^2")))
(define-key neo-LaTeX-mode-map (kbd "³") (λ! (insert "^3")))
;; (define-key neo-LaTeX-mode-map (kbd "1") (λ! (insert "_1"))) ;Subscript 1 doesn't work for me in neo
(define-key neo-LaTeX-mode-map (kbd "₂") (λ! (insert "_2")))
(define-key neo-LaTeX-mode-map (kbd "₃") (λ! (insert "_3")))
  ;; "›" (λ! (insert ""))              ;This is a matter of encoding
  ;; "‹" (λ! (insert ""))
(define-key neo-LaTeX-mode-map (kbd "¢") (λ! (insert "\\textcent")))
(define-key neo-LaTeX-mode-map (kbd "¥") (λ! (insert "\\textyen")))
(define-key neo-LaTeX-mode-map (kbd "‘") (λ! (insert "`")))
(define-key neo-LaTeX-mode-map (kbd "’") (λ! (insert "\'")))
(define-key neo-LaTeX-mode-map (kbd "ª") (λ! (insert "^a")))
(define-key neo-LaTeX-mode-map (kbd "º") (λ! (insert "^o")))
(define-key neo-LaTeX-mode-map (kbd "№") (λ! (insert "\\textnumero")))
(define-key neo-LaTeX-mode-map (kbd "·") (λ! (insert "\\cdot")))
(define-key neo-LaTeX-mode-map (kbd "£") (λ! (insert "\\pounds")))
(define-key neo-LaTeX-mode-map (kbd "¤") (λ! (insert "\\textcurrency")))
(define-key neo-LaTeX-mode-map (kbd "°") (λ! (insert "\\degree")))
(define-key neo-LaTeX-mode-map (kbd "§") (λ! (insert "\\S")))
(define-key neo-LaTeX-mode-map (kbd "ℓ") (λ! (insert "\\ell")))
(define-key neo-LaTeX-mode-map (kbd "»") (λ! (insert "\\guillemotright")))
(define-key neo-LaTeX-mode-map (kbd "«") (λ! (insert "\\guillemotleft")))
(define-key neo-LaTeX-mode-map (kbd "„") (λ! (insert ",,")))
(define-key neo-LaTeX-mode-map (kbd "“") (λ! (insert "``")))
(define-key neo-LaTeX-mode-map (kbd "”") (λ! (insert "\'\'")))
(define-key neo-LaTeX-mode-map (kbd "—") (λ! (insert "\\textemdash")))
(define-key neo-LaTeX-mode-map (kbd "…") (λ! (insert "\\dots")))
(define-key neo-LaTeX-mode-map (kbd "­") (λ! (insert "\\-")))
  ;; Number block
(define-key neo-LaTeX-mode-map (kbd "␣") (λ! (insert "\\textvisiblespace")))
(define-key neo-LaTeX-mode-map (kbd "♦") (λ! (insert "\\diamondsuit")))
(define-key neo-LaTeX-mode-map (kbd "♥") (λ! (insert "\\heartsuit")))
(define-key neo-LaTeX-mode-map (kbd "♠") (λ! (insert "\\spadesuit")))
(define-key neo-LaTeX-mode-map (kbd "♣") (λ! (insert "\\clubsuit")))
(define-key neo-LaTeX-mode-map (kbd "‣") (λ! (insert "\\item")))
(define-key neo-LaTeX-mode-map (kbd "✔") (λ! (insert "\\checkmark")))
(define-key neo-LaTeX-mode-map (kbd "✘") (λ! (insert "\\xmark")))
(define-key neo-LaTeX-mode-map (kbd "†") (λ! (insert "\\Cross")))
(define-key neo-LaTeX-mode-map (kbd "↔") (λ! (insert "\\leftrightarrow")))
(define-key neo-LaTeX-mode-map (kbd "↓") (λ! (insert "\\downarrow")))
(define-key neo-LaTeX-mode-map (kbd "⇌") (λ! (insert "\\rightleftharpoons ")))
(define-key neo-LaTeX-mode-map (kbd "←") (λ! (insert "\\leftarrow")))
(define-key neo-LaTeX-mode-map (kbd "→") (λ! (insert "\\rightarrow")))
(define-key neo-LaTeX-mode-map (kbd "↕") (λ! (insert "\\updownarrow")))
(define-key neo-LaTeX-mode-map (kbd "↑") (λ! (insert "\\uparrow")))
(define-key neo-LaTeX-mode-map (kbd "±") (λ! (insert "\\pm")))
(define-key neo-LaTeX-mode-map (kbd "÷") (λ! (insert "\\div")))
(define-key neo-LaTeX-mode-map (kbd "⋅") (λ! (insert "\\circ")))
(define-key neo-LaTeX-mode-map (kbd "−") (λ! (insert "−")))
(define-key neo-LaTeX-mode-map (kbd "∓") (λ! (insert "\\mp")))
(define-key neo-LaTeX-mode-map (kbd "≠") (λ! (insert "\\neq")))
(define-key neo-LaTeX-mode-map (kbd "∕") (λ! (insert "\\-")))
(define-key neo-LaTeX-mode-map (kbd "×") (λ! (insert "\\times")))
(define-key neo-LaTeX-mode-map (kbd "∖") (λ! (insert "\\setminus")))
(define-key neo-LaTeX-mode-map (kbd "□") (λ! (insert "\\Box")))
(define-key neo-LaTeX-mode-map (kbd "″") (λ! (insert "^{\\prime\\prime}")))
(define-key neo-LaTeX-mode-map (kbd "⌊") (λ! (insert "\\lfloor")))
(define-key neo-LaTeX-mode-map (kbd "⋃") (λ! (insert "\\bigcup")))
(define-key neo-LaTeX-mode-map (kbd "⌋") (λ! (insert "\\rfloor")))
(define-key neo-LaTeX-mode-map (kbd "⊆") (λ! (insert "\\subseteq")))
(define-key neo-LaTeX-mode-map (kbd "⊷") (λ! (insert "\\imageof ")))
(define-key neo-LaTeX-mode-map (kbd "⊇") (λ! (insert "\\supseteq")))
(define-key neo-LaTeX-mode-map (kbd "⌈") (λ! (insert "\\leftceil")))
(define-key neo-LaTeX-mode-map (kbd "⋂") (λ! (insert "\\bigcap")))
(define-key neo-LaTeX-mode-map (kbd "⌉") (λ! (insert "\\rightceil")))
(define-key neo-LaTeX-mode-map (kbd "∔") (λ! (insert "\\dotplus")))
(define-key neo-LaTeX-mode-map (kbd "≡") (λ! (insert "\\equiv")))
(define-key neo-LaTeX-mode-map (kbd "∣") (λ! (insert "\\bigm|")))
(define-key neo-LaTeX-mode-map (kbd "⊗") (λ! (insert "\\otimes")))
(define-key neo-LaTeX-mode-map (kbd "∸") (λ! (insert "\\dotdiv")))
(define-key neo-LaTeX-mode-map (kbd "‰") (λ! (insert "\\textperthousand")))
(define-key neo-LaTeX-mode-map (kbd "′") (λ! (insert "^{\\prime}")))
(define-key neo-LaTeX-mode-map (kbd "≤") (λ! (insert "\\leq")))
(define-key neo-LaTeX-mode-map (kbd "∪") (λ! (insert "\\cup")))
(define-key neo-LaTeX-mode-map (kbd "≥") (λ! (insert "\\geq")))
(define-key neo-LaTeX-mode-map (kbd "⊂") (λ! (insert "\\subset")))
(define-key neo-LaTeX-mode-map (kbd "⊶") (λ! (insert "\\original")))
(define-key neo-LaTeX-mode-map (kbd "⊃") (λ! (insert "\\supset")))
(define-key neo-LaTeX-mode-map (kbd "≪") (λ! (insert "\\ll")))
(define-key neo-LaTeX-mode-map (kbd "∩") (λ! (insert "\\cap")))
(define-key neo-LaTeX-mode-map (kbd "≫") (λ! (insert "\\rr")))
(define-key neo-LaTeX-mode-map (kbd "⊕") (λ! (insert "\\oplus")))
(define-key neo-LaTeX-mode-map (kbd "≈") (λ! (insert "\\approx")))
(define-key neo-LaTeX-mode-map (kbd "⌀") (λ! (insert "\\emptyset")))
(define-key neo-LaTeX-mode-map (kbd "⊙") (λ! (insert "\\odot")))
(define-key neo-LaTeX-mode-map (kbd "⊖") (λ! (insert "\\ominus")))

(provide 'neo-LaTeX)
;;; neo-LaTeX.el ends here
