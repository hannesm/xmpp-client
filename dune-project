(lang dune 2.5)
(name jackline)

(generate_opam_files true)

(source (github hannesm/jackline))
(license BSD2)
(authors "Hannes Mehnert <hannes@mehnert.org>")
(maintainers "Hannes Mehnert <hannes@mehnert.org>")

(package
  (name jackline)
  (depends
    (ocaml            (>= 4.08))
    (ppx_sexp_conv    :build)
    (ppx_deriving     (>= 0.14.0))
    (erm_xmpp         (>= 0.3))
    (tls              (>= 0.13.0))
    (mirage-crypto-pk (>= 0.8.3))
    (x509             (>= 0.10.0))
    (domain-name      (>= 0.2.0))
    (lwt              (>= 0.5.3))
    (otr              (>= 0.2.1))
    (astring          (>= 0.8.3))
    (ptime            (>= 0.8.0))
    (notty            (>= 0.2.2))
    (sexplib          (>= 0.14.0))
    (hex              (>= 1.4.0))
    (uchar            (>= 0.0.2))
    (uucp             (>= 2.0.0))
    (uuseg            (>= 1.0.0))
    (uutf             (>= 1.0.0))
    (dns-client       (>= 4.5.0))
    (cstruct          (>= 5.2.0))
    (base64           (>= 3.4.0)))
  (synopsis "Jackline - a minimalistic secure XMPP client")
  (description
    "\| Jackline uses several clean-slate libraries (OCaml-TLS, OCaml-OTR) and only has
    "\| a minimal few features: no support for HTML markup, avatars, which music you're
    "\| playing, timezone you're living in, ...
    "\|
    "\| Supported features:
    "\| - single XMPP account
    "\| - OTR (built-in and enabled by default)
    "\| - strict TLS certificate verification
    "\| - plain text (no HTML!)
    "\| - [XEP-0184](http://xmpp.org/extensions/xep-0184.html) (Message Delivery Receipts)
    "\| - _no_ import of OTR keys or configuration
    "\| - _no_ plaintext connections to XMPP server
    "\|
    "\| Preserving three core properties:
    "\| - any data written on disk (using lots of silly parens) by jackline will stay being readable by every future jackline version
    "\| - once the initial configuration file (and private key and maybe password) is created, it will never be written to by jackline
    "\| - jackline will never transmit any data or open a network connection unless initiated by you (this means no 'autoconnect on startup', or 'user is typing' indication sent).  There is an automated reconnect to the same server if the connection terminated.
    ))
