(use-modules (guix gexp)
             (guix packages)
             (guix build-system trivial)
             (gnu packages base)
             (gnu packages node)
             (gnu packages java)
             (gnu packages python-web)
             (rde packages)
             (gnu packages emacs-xyz)
             (gnu packages compression)
             (nongnu packages clojure))

(package
 (name "guix-clojure")
 (version "0.0.1")
 (source (local-file "."))
 (build-system trivial-build-system)
 (native-inputs
  `(("make" ,gnu-make)
    ("unzip" ,unzip) ; Needed for navigating source code from jars
    ("cider" ,emacs-cider)
    ("emacs-consumer" ,emacs-consumer)
    ("node" ,node-lts)
    ("openjdk" ,openjdk16 "jdk")
    ("clojure-tools" ,clojure-tools)
    ("clj-kondo" ,clj-kondo)))
 (home-page "")
 (synopsis "")
 (description "")
 (license #f))
