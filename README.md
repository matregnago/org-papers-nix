# org-papers-nix

Org-mode templates for conference papers and theses, built reproducibly with Nix.

| Template   | Based on                                  |
|------------|-------------------------------------------|
| `sbc`      | https://github.com/schnorr/sbcorg         |
| `infufrgs` | https://github.com/schnorr/infufrgs       |

```sh
nix flake init -t github:<owner>/org-papers-nix#infufrgs
nix build
nix develop -c make
```

The `infufrgs` class is not in TeX Live yet, so the template takes it as a
flake input; run `nix flake update infufrgs` to pick up upstream changes.
