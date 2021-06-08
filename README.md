[![Build Status](https://travis-ci.com/jcs-elpa/flex.svg?branch=master)](https://travis-ci.com/jcs-elpa/flex)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# flex

Algorithm is extracted from [ido-better-flex](https://github.com/vic/ido-better-flex).

## Usage

```el
(flex-score "package-install" "instpkg")  ; 6.581987975707267
(flex-score "install-package" "instpkg")  ; 7.9400006103701894
(flex-score "" "instpkg")                 ; 0.0
```
