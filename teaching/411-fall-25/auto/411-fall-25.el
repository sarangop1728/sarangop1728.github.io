;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "411-fall-25"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:org5b4f823"
    "sec:org6cba718"
    "sec:org76a5a90"
    "sec:org529b9de"
    "sec:orgdde4100"
    "sec:org1b93b3b"
    "sec:org99c3462"
    "sec:org5a70151"
    "sec:org35dbb06"
    "sec:orgfcb88f2"
    "sec:org36bcff4"
    "sec:org13eae6a"
    "sec:org9fbb415"
    "sec:org81bce6a"
    "sec:org58e32e5"
    "sec:orgfd2a254"
    "sec:orga9c72ec"
    "sec:orge351021"
    "sec:org2b21d3c"
    "sec:orgdebc805"
    "sec:org6fa24c4"
    "sec:org799e3be"
    "sec:org8a3450d"
    "sec:org99331b1"
    "sec:org3feab8d"
    "sec:orga5a6c57"
    "sec:org46986a4"
    "sec:org72ebc6e"
    "sec:orgfea4b90"
    "sec:orge09d472"))
 :latex)

