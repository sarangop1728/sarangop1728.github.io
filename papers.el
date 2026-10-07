;;; papers.el --- Publication list shared by index.org and the CV  -*- lexical-binding: t; -*-
;;
;; Loaded by the babel blocks in index.org (-> `sap/papers-html') and in
;; documents/Santiago_Arango_Pineros_CV.org (-> `sap/papers-org').  After
;; editing, re-export both pages.

;; ---------------------------------------------------------------------------
;; Publication list. To add a paper, prepend one entry to `sap/papers' below.
;;
;;   :title    string (required). Math goes in \\(...\\) -- doubled, because
;;             the elisp reader eats a single backslash before "(".
;;   :authors  list of ("Name" . "url"), or a bare "Name" for no homepage.
;;             Omit for solo papers.
;;   :venue    (:prefix "To appear in" :name "..." :url "..."
;;              :volume "..." :year "..." :number "..." :pages "...")
;;             Omit entirely for a preprint. :url omitted => name is not a link.
;;   :links    list of (pdf . URL) (doi . URL) (code . URL)
;;                     (arxiv . "2504.07750")  <- bare id, URL is built
;;                     (mr . "4927618")        <- bare id, URL is built
;;                     (extra "Label" "url" "css-class")
;;             Rendered in the order: pdf, doi, mr, arxiv, code, extra.
;;   :image    (:src "images/x.png" :alt "..." :href "...")  :href defaults to :src
;; ---------------------------------------------------------------------------
(defconst sap/papers
  '((:title "\\(7\\)-adic Galois representations of elliptic curves over the rationals via Kummer descent"
    :authors (("David Zureick-Brown" . "https://dmzb.github.io/"))
    :links ((arxiv . "2610.06521")
            (extra "html" "https://sarangop1728.github.io/7-adic-settlers-of-cartan/" "code")
            (extra "code" "https://github.com/sarangop1728/7-adic-settlers-of-cartan" "code"))
    :image (:src "images/thumbs/7-adic-settlers-of-cartan.svg" :href "images/7-adic-settlers-of-cartan.jpg"
            :alt "7-adic Settlers of Catan"))

    (:title "Appendix to: On \\(p\\)-adic solubility of \\(Ax^{\\ell} + By^{m} + Cz^{n} = 0\\)"
            :authors (("Christopher Keyes" . "https://c-keyes.github.io/")
                      ("Andrew Kobin" . "https://www.andrewkobin.com/"))
            :links ((arxiv . "2608.18525"))
            :image (:src "images/thumbs/fermat-stack.png" :href "images/fermat-stack.png"
			 :alt "A geometric fiber of the Fermat stack"))

    (:title "Counting number fields of fixed degree by their smallest defining polynomial"
            :authors (("Fabian Gundlach" . "https://fabiangundlach.org")
                      ("Robert J. Lemke Oliver" . "https://lemkeoliver.github.io")
                      ("Kevin J. McGown" . "https://kmcgown.yourweb.csuchico.edu")
                      ("Will Sawin" . "https://williamsawin.com")
                      ("Allechar Serrano López" . "https://www.allechar.org")
                      ("Arul Shankar" . "https://www.math.utoronto.ca/ashankar/")
                      ("Ila Varma" . "https://www.math.utoronto.ca/~ila/"))
            :links ((arxiv . "2602.06943"))
            :image (:src "images/thumbs/flows.png" :alt "Geodesic and horocycle flows"
			 :href "images/flows.pdf"))

    (:title "Counting primitive integral solutions to spherical generalized Fermat equations"
            :venue (:name "Canadian Mathematical Bulletin" :url "https://www.cambridge.org/core/journals/canadian-mathematical-bulletin/article/counting-primitive-integral-solutions-to-spherical-generalized-fermat-equations/950F947E094297C8BFD4C50E78014050" :volume "FirstView" :year "2026")
            :links ((arxiv . "2508.13093")
                    (extra "Magma experiment" "misc/computations.html" "code"))
            :image (:src "images/thumbs/UZ_50.png" :href "images/UZ_50.png" :alt "Fermat triples"))

    (:title "Fermat descent"
            :links ((pdf . "https://www.dropbox.com/scl/fi/ofd830zhdhxpr1wqqmubw/main.pdf?rlkey=8t1grppugzbnnx74lmskz86zq&dl=0")
                    (arxiv . "2508.13059"))
            :image (:src "images/thumbs/belyi-fiber.png" :href "images/belyi-fiber.png" :alt "Belyi fiber"))

    (:title "Galois groups of simple abelian varieties over finite fields and exceptional Tate classes"
            :authors (("Sam Frengley" . "https://samfrengley.github.io")
                      ("Sameera Vemulapalli" . "https://sites.google.com/view/sameeravemulapalli/home"))
            :links ((arxiv . "2505.09589")
                    (code . "https://github.com/SamFrengley/exceptional-tate-classes"))
            :image (:src "images/thumbs/np.png" :href "images/np.png" :alt "Newton polygon"))

    (:title "Counting 5-isogenies of elliptic curves over the rationals"
            :authors (("Changho Han" . "https://sites.google.com/view/changho-han/")
                      ("Oana Padurariu" . "https://sites.google.com/view/oanapadurariu/home")
                      ("Sun Woo Park" . "https://sites.google.com/wisc.edu/spark483"))
            :venue (:name "Journal of the London Mathematical Society"
			  :url "https://londmathsoc.onlinelibrary.wiley.com/doi/10.1112/jlms.70572"
			  :volume "113" :year "2026" :number "5" :pages "e70572")
            :links ((doi . "https://londmathsoc.onlinelibrary.wiley.com/doi/10.1112/jlms.70572")
                    (arxiv . "2504.07750")
                    (code . "https://github.com/sarangop1728/counting-5-isogenies"))
            :image (:src "images/thumbs/bowtie.jpg" :href "images/bowtie.jpeg" :alt "Bowtie"))

    (:title "Bounds for the relative class number problem for function fields"
            :authors (("María Chara" . "https://sites.google.com/view/maria-chara/home")
                      ("Asimina S. Hamakiotes" . "https://asiminah.github.io")
                      ("Kiran S. Kedlaya" . "https://kskedlaya.org")
                      "Gustavo Rama")
            :venue (:name "Journal of Number Theory"
			  :url "https://www.sciencedirect.com/science/article/pii/S0022314X25001751?via%3Dihub"
			  :volume "278" :year "2026" :pages "977-1010")
            :links ((doi . "https://www.sciencedirect.com/science/article/pii/S0022314X25001751?via%3Dihub")
                    (mr . "4927618")
                    (arxiv . "2412.12467")
                    (code . "https://github.com/sarangop1728/twice-class-number"))
            :image (:src "images/thumbs/oaxaca.png" :href "images/oaxaca.png" :alt "Positive graph"))

    (:title "Galois groups of low dimensional abelian varieties over finite fields"
            :authors (("Sam Frengley" . "https://samfrengley.github.io")
                      ("Sameera Vemulapalli" . "https://sites.google.com/view/sameeravemulapalli/home"))
            :venue (:prefix "To appear in"
			    :name "Transactions of the American Mathematical Society")
            :links ((arxiv . "2412.03358")
                    (code . "https://github.com/sarangop1728/Galois-Frob-Polys"))
            :image (:src "images/thumbs/W6.png" :href "images/W6.png" :alt "The W6 graph"))

    (:title "Frobenius distributions of low dimensional abelian varieties over finite fields"
            :authors (("Deewang Bhamidipati" . "https://bdeewang.com")
                      ("Soumya Sankar" . "https://sites.google.com/site/soumya3sankar/"))
            :venue (:name "International Mathematics Research Notices"
			  :url "https://academic.oup.com/imrn/article-abstract/2024/16/11989/7708716"
			  :volume "2024" :year "2024" :number "16" :pages "11989-12020")
            :links ((arxiv . "2306.02237")
                    (code . "https://github.com/sarangop1728/Frobenius-distributions-AVs-Fq"))
            :image (:src "images/thumbs/3.4.ab_ad_m.gif" :href "images/3.4.ab_ad_m.gif" :alt "Frobenius distribution animation"))

    (:title "Mertens' theorem for Chebotarev sets"
            :authors (("Daniel Keliher" . "https://www.danielkeliher.com")
                      ("Chris Keyes" . "https://c-keyes.github.io"))
            :venue (:name "International Journal of Number Theory"
			  :url "https://www.worldscientific.com/doi/10.1142/S1793042122500932"
			  :volume "18" :year "2022" :number "8" :pages "1823-1842")
            :links ((mr . "4439576")
                    (arxiv . "2103.14747"))
            :image (:src "images/thumbs/mertens.png" :href "images/mertens.png" :alt "Table summary"))

    (:title "The global field Euler function"
            :authors ("Juan Diego Rojas")
            :venue (:name "Research in the Mathematical Sciences"
			  :url "https://link.springer.com/article/10.1007/s40687-020-00218-3"
			  :volume "7" :year "2020" :number "3" :pages "Paper No. 19, 21 pp.")
            :links ((mr . "4123394")
                    (arxiv . "2005.04521"))
            :image (:src "images/thumbs/euler.png" :href "images/euler.png" :alt "Graph of the Euler function"))))

(defun sap/papers-html ()
  "Render `sap/papers' as the HTML list on the home page."
  (let* (;; --- helpers -------------------------------------------------------
	 (esc (lambda (s)          ; escape for an HTML attribute (XHTML-valid &amp;)
		(replace-regexp-in-string
		 "\"" "&quot;"
		 (replace-regexp-in-string "&" "&amp;" (or s "")))))
	 (link (lambda (url label &optional class)
		 (format "<a href=\"%s\"%s>%s</a>"
			 (funcall esc url)
			 (if class (format " class=\"%s\"" class) "")
			 label)))

	 ;; "A", "A and B", "A, B, and C"
	 (join (lambda (xs)
		 (pcase (length xs)
                   (0 "")
                   (1 (car xs))
                   (2 (concat (nth 0 xs) " and " (nth 1 xs)))
                   (_ (concat (mapconcat #'identity (butlast xs) ", ")
                              ", and " (car (last xs)))))))

	 (authors-html
          (lambda (as)
            (when as
              (concat "with "
                      (funcall join
                               (mapcar (lambda (a)
					 (if (consp a)
                                             (funcall link (cdr a) (car a))
                                           a))
                                       as))
                      "."))))

	 (venue-html
          (lambda (v)
            (when v
              (let* ((name (plist-get v :name))
                     (url (plist-get v :url))
                     (prefix (plist-get v :prefix))
                     (vol (plist-get v :volume))
                     (year (plist-get v :year))
                     (num (plist-get v :number))
                     (pages (plist-get v :pages))
                     (title (if url
				(funcall link url name "journal")
                              (format "<a class=\"journal\">%s</a>" name)))
                     (cite (concat (when vol (format " <b>%s</b>" vol))
                                   (when year (format " (%s)" year))
                                   (when num (format ", no. %s" num))
                                   (when pages (format ", %s" pages)))))
		;; ":pages \"Paper No. 19, 21 pp.\"" already ends in a period
		(concat (when prefix (concat prefix " ")) title cite
			(if (string-suffix-p "." cite) "" "."))))))

	 (links-html
          (lambda (ls)
            (let* ((get (lambda (k) (cdr (assq k ls))))
                   (parts
                    (delq nil
                          (list
                           (when (funcall get 'pdf)
                             (funcall link (funcall get 'pdf) "pdf"))
                           (when (funcall get 'doi)
                             (funcall link (funcall get 'doi) "DOI"))
                           (when (funcall get 'mr)
                             (funcall link
                                      (concat "https://mathscinet.ams.org/mathscinet/article?mr="
                                              (funcall get 'mr))
                                      (concat "MR " (funcall get 'mr)) "mr"))
                           (when (funcall get 'arxiv)
                             (funcall link
                                      (concat "https://arxiv.org/abs/" (funcall get 'arxiv))
                                      (funcall get 'arxiv) "arxiv"))
                           (when (funcall get 'code)
                             (funcall link (funcall get 'code) "code" "code"))))))
              (dolist (e ls)
		(when (eq (car-safe e) 'extra)
                  (setq parts (append parts
                                      (list (funcall link (nth 2 e) (nth 1 e) (nth 3 e)))))))
              (when parts
		(concat "(" (mapconcat #'identity parts ", ") ")")))))

	 (image-html
          (lambda (im)
            (when im
              (let* ((src (plist-get im :src))
                     (href (or (plist-get im :href) src))
                     (alt (or (plist-get im :alt) "")))
		(format (concat "<div class=\"paper-image\">"
				"<a href=\"%s\"><img src=\"%s\" alt=\"%s\" loading=\"lazy\" /></a>"
				"</div>")
			(funcall esc href) (funcall esc src) (funcall esc alt))))))

	 (paper-html
          (lambda (p)
            (let* ((as (plist-get p :authors))
                   ;; "Title, with A and B." vs. "Title." when solo
                   (sep (if as "," "."))
                   (lines (delq nil (list (funcall authors-html as)
                                          (funcall venue-html (plist-get p :venue))
                                          (funcall links-html (plist-get p :links))))))
              (concat "<li class=\"paper\">\n<div class=\"ref-container\">\n"
                      "<div class=\"paper-meta\">\n"
                      (format "<b>%s</b>%s" (plist-get p :title) sep)
                      (when lines (concat "<br />\n" (mapconcat #'identity lines "<br />\n")))
                      "\n</div>\n"
                      (or (funcall image-html (plist-get p :image)) "")
                      "\n</div>\n</li>")))))


    (concat "<ol reversed=\"reversed\" class=\"paper-list\">\n"
            (mapconcat paper-html sap/papers "\n")
            "\n</ol>\n")))

(defun sap/papers--join (xs)
  "\"A\", \"A and B\", \"A, B, and C\"."
  (pcase (length xs)
    (0 "")
    (1 (car xs))
    (2 (concat (nth 0 xs) " and " (nth 1 xs)))
    (_ (concat (mapconcat #'identity (butlast xs) ", ")
               ", and " (car (last xs))))))

(defun sap/papers--org-venue (v)
  "Org markup for venue plist V, e.g. \"*Journal* 278 (2026), 977--1010.\""
  (let* ((vol (plist-get v :volume))
         (year (plist-get v :year))
         (num (plist-get v :number))
         (pages (plist-get v :pages))
         (cite (concat (when vol (concat " " vol))
                       (when year (format " (%s)" year))
                       (when num (format ", no. %s" num))
                       (when pages
                         (concat ", " (replace-regexp-in-string
                                       "\\([0-9]\\)-\\([0-9]\\)" "\\1--\\2" pages))))))
    (concat (when (plist-get v :prefix) (concat (plist-get v :prefix) " "))
            "*" (plist-get v :name) "*" cite
            (if (string-suffix-p "." cite) "" "."))))

(defun sap/papers--org-item (p)
  "One numbered org list item for paper P, as in the CV."
  (let* ((links (plist-get p :links))
         (venue (plist-get p :venue))
         (url (cond ((alist-get 'arxiv links)
                     (concat "https://arxiv.org/abs/" (alist-get 'arxiv links)))
                    ((plist-get venue :url))
                    ((alist-get 'pdf links))))
         (title (format "/%s/" (plist-get p :title)))
         (as (plist-get p :authors))
         (rest (delq nil
                     (list (when as
                             (concat "with "
                                     (sap/papers--join
                                      (mapcar (lambda (a) (if (consp a) (car a) a)) as))
                                     "."))
                           (when venue (sap/papers--org-venue venue))))))
    (concat "1. " (if url (format "[[%s][%s]]" url title) title)
            (if rest
                (concat (if as "," ".") " \\\\\n   " (mapconcat #'identity rest " "))
              "."))))

(defun sap/papers-org ()
  "Render `sap/papers' as a reverse-numbered org list, for the CV.
Org markup rather than HTML, so that one list exports to both LaTeX and HTML."
  (concat "#+ATTR_LATEX: :environment etaremune :options [itemsep=0pt, leftmargin=18mm]\n"
          "#+ATTR_HTML: :reversed reversed\n"
          (mapconcat #'sap/papers--org-item sap/papers "\n")
          "\n"))

(provide 'papers)
;;; papers.el ends here
