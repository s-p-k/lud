;;;; See LICENSE file for details
;;;; lud is aimed to be a small cli tool to search Urban dictionary

(ql:quickload :drakma)
(ql:quickload :babel)


(defparameter URBAN-URL "http://api.urbandictionary.com/v0/define")

(type-of URBAN-URL)

(defun search-urban-dictionary (word)
  (babel:octets-to-string
   (drakma:http-request URBAN-URL
			:parameters
			(list (cons "term" word)))))

(search-urban-dictionary "yaw")
