;;; neo-LaTeX.el --- latex support for neo users
;;
;; Copyright (C) 2020 Michael Wernthaler
;;
;; Author: Michael Wernthaler, Michael Sippel
;; Maintainer: Michael Wernthaler <michael.wernthaler@posteo.de>
;; Created: Juli 28, 2020
;; Modified: Juli 29, 2020
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

(mapcar
 (lambda (item)
   (define-key
    neo-LaTeX-mode-map
    (kbd (car item))
    `(lambda () (interactive) (insert ,(cdr item)))))

 '(
   ;; Greek lower case letters
   ("ξ" . "\\xi")
   ("λ" . "\\lambda")
   ("χ" . "\\chi")
   ("ω" . "\\omega")
   ("κ" . "\\kappa")
   ("ψ" . "\\psi")
   ("γ" . "\\gamma")
   ("φ" . "\\varphi")
   ("ϕ" . "\\phi")
   ("ς" . "\\varsigma")
   ("ι" . "\\iota")
   ("α" . "\\alpha")
   ("ε" . "\\varepsilon")
   ("σ" . "\sigma")
   ("ν" . "\nu")
   ("ρ" . "\\rho")
   ("τ" . "\\tau")
   ("δ" . "\\delta")
   ("υ" . "\\upsilon")
   ("ϵ" . "\\epsilon")
   ("η" . "\\eta")
   ("π" . "\\pi")
   ("ζ" . "\\zeta")
   ("β" . "\\beta")
   ("μ" . "\\mu")
   ("ϱ" . "\\varrho")
   ("ϑ" . "\\vartheta")
   ("θ" . "\\theta")
   ;; Greek upper case letters
   ("Ξ" ."\\Xi")
   ("Λ" . "\\Lambda")
   ("Ω" ."\\Omega")
   ("Ψ" . "\\Psi")
   ("Γ" . "\\Gamma")
   ("Φ" . "\\Phi")
   ("Δ" . "\\Delta")
   ("Θ" . "\\Theta")
   ("Π" . "\\Pi")
   ("Σ" . "\\Sigma")
   ;; Mathematical symbols
   ("¬" . "\\neg")
   ("∨" . "\\lor")
   ("∧" . "\\land")
   ("⊥" . "\\bot")
   ("∡" . "\\measuredangle")
   ("∥" . "\\|")
   ("→" . "\\to")
   ("∞" . "\\infty")
   ("∝" . "\\propto")
   ("∅" . "\\emptyset")
   ("√" . "\\sqrt")
   ("ℂ" . "\\mathbb{C}")
   ("ℚ" . "\\mathbb{Q}")
   ("∘" . "\\circ")
   ("⊂" . "\\subset")
   ("∫" . "\\int")
   ("∀" . "\\forall")
   ("∃" . "\\exists")
   ("∈" . "\\in")
   ("ℕ" . "\\mathbb{N}")
   ("ℝ" . "\\mathbb{R}")
   ("∂" . "\\partial")
   ("∇" . "\\nabla")
   ("∪" . "\\cup")
   ("∩" . "\\cap")
   ("ℵ" . "\\aleph")
   ("ℤ" . "\\mathbb{Z}")
   ("⇐" . "\\Leftarrow")
   ("⇔" . "\\Leftrightarrow")
   ("⇒" . "\\Rightarrow")
   ("↦" . "\\mapsto")
   ;; Misc
   ("¹" . "^1")
   ("²" ."^2")
   ("³" . "^3")
   ;; ("1" . "_1") ;Subscript 1 doesn't work for me in neo
   ("₂" . "_2")
   ("₃" . "_3")
   ;; ("›" . "")              ;This is a matter of encoding
   ;; ("‹" . "")
   ("¢" . "\\textcent")
   ("¥" . "\\textyen")
   ("‘" . "`")
   ("’" . "'")
   ("ª" . "^a")
   ("º" . "^o")
   ("№" . "\\textnumero")
   ("·" . "\\cdot")
   ("£" . "\\pounds")
   ("¤" . "\\textcurrency")
   ("°" . "\\degree")
   ("§". "\\S")
   ("ℓ" . "\\ell")
   ("»" . "\\guillemotright")
   ("«" . "\\guillemotleft")
   ("„" . ",,")
   ("“" . "``")
   ("”" . "'\\'")
   ("—" . "\\textemdash")
   ("…" . "\\dots")
   ;("­" . "\\-")
   ;; Number block
   ("␣" . "\\textvisiblespace")
   ("♦" . "\\diamondsuit")
   ("♥" . "\\heartsuit")
   ("♠" . "\\spadesuit")
   ("♣" . "\\clubsuit")
   ("‣" . "\\item")
   ("✔" . "\\checkmark")
   ("✘" . "\\xmark")
   ("†" . "\\Cross")
   ("↔" . "\\leftrightarrow")
   ("↓" . "\\downarrow")
   ("⇌" . "\rightleftharpoons ")
   ("←" . "\\leftarrow")
   ("→" . "\\rightarrow")
   ("↕" . "\\updownarrow")
   ("↑" . "\\uparrow")
   ("±" . "\\pm")
   ("÷" . "\\div")
   ("⋅" . "\\circ")
   ("−" . "−")
   ("∓" . "\\mp")
   ("≠" . "\\neq")
   ("∕" . "\\-")
   ("×" . "\\times")
   ("∖" . "\\setminus")
   ("□" . "\\Box")
   ("″" . "^{\\prime\\prime}")
   ("⌊" . "\\lfloor")
   ("⋃" . "\\bigcup")
   ("⌋" . "\\rfloor")
   ("⊆" . "\\subseteq")
   ("⊷" . "\\imageof ")
   ("⊇" . "\\supseteq")
   ("⌈" . "\\leftceil")
   ("⋂" . "\\bigcap")
   ("⌉" . "\\rightceil")
   ("∔" . "\\dotplus")
   ("≡" . "\\equiv")
   ("∣" . "\bigm|")
   ("⊗" . "\\otimes")
   ("∸" . "\\dotdiv")
   ("‰" . "\\textperthousand")
   ("′" . "^{\\prime}")
   ("≤" . "\\leq")
   ("∪" . "\\cup")
   ("≥" . "\\geq")
   ("⊂" . "\\subset")
   ("⊶" . "\\original")
   ("⊃" . "\\supset")
   ("≪" . "\\ll")
   ("∩" . "\\cap")
   ("≫" . "\\rr")
   ("⊕" . "\\oplus")
   ("≈" . "\\approx")
   ("⌀" . "\\emptyset")
   ("⊙" . "\\odot")
   ("⊖" . "\\ominus")))

(provide 'neo-LaTeX)

;;; neo-LaTeX.el ends here
