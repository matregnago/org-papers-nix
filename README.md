# org-papers-nix

Org-mode templates for conference papers and theses, built reproducibly with Nix.

| Template   | Based on                                  |
|------------|-------------------------------------------|
| `sbc`      | https://github.com/schnorr/sbcorg         |
| `infufrgs` | https://github.com/schnorr/infufrgs       |

```sh
nix flake init -t github:matregnago/org-papers-nix#infufrgs
nix develop -c make
```
