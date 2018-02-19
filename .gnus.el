(setq user-mail-address "dave@sisu.io"
      user-full-name "Dave Voutila")

(setq gnus-select-method '(nntp "news.gmane.org"))

(gnus-add-configuration
 '(article
   (horizontal 1.0
	       (vertical 25
			 (group 1.0))
	       (vertical 1.0
			 (summary 0.25 point)
			 (article 1.0)))))
(gnus-add-configuration
 '(summary
   (horizontal 1.0
	       (vertical 25
			 (group 1.0))
	       (vertical 1.0
			 (summary 1.0 point)))))
