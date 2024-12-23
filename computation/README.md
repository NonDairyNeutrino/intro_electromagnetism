# Computational Modelling for Introductory Physics

## Electromagnetism

[![Stable Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://NonDairyNeutrino.github.io/IntroElectromagnetism.jl/stable)
[![In development documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://NonDairyNeutrino.github.io/IntroElectromagnetism.jl/dev)
[![Build Status](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/workflows/Test/badge.svg)](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions)
[![Test workflow status](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions/workflows/Test.yml/badge.svg?branch=main)](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions/workflows/Test.yml?query=branch%3Amain)
[![Lint workflow Status](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions/workflows/Lint.yml/badge.svg?branch=main)](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions/workflows/Lint.yml?query=branch%3Amain)
[![Docs workflow Status](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions/workflows/Docs.yml/badge.svg?branch=main)](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/actions/workflows/Docs.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/NonDairyNeutrino/IntroElectromagnetism.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/NonDairyNeutrino/IntroElectromagnetism.jl)
[![DOI](https://zenodo.org/badge/DOI/FIXME)](https://doi.org/FIXME)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![All Contributors](https://img.shields.io/github/all-contributors/NonDairyNeutrino/IntroElectromagnetism.jl?labelColor=5e1ec7&color=c0ffee&style=flat-square)](#contributors)
[![BestieTemplate](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/JuliaBesties/BestieTemplate.jl/main/docs/src/assets/badge.json)](https://github.com/JuliaBesties/BestieTemplate.jl)

This package is meant to serve as a collection of resources for instructors and students to aid in exploring:

+ equipotential lines
+ basics of computational physics

## Getting started

The models constructed here are in the Julia programming lanuage.  In my own opinion, Julia is the future of scientific computing and as such all models here will be in Julia.

### Installing Julia

Julia can be installed in multiple ways.

+ Windows:
  + Microsoft Store: https://www.microsoft.com/store/productId/9NJNWW8PVKMN?ocid=pdpshare
  + Winget: `winget install julia -s msstore`

+ Linux: `curl -fsSL https://install.julialang.org | sh`

More details can be found on the Julia website: https://julialang.org/downloads/

## Editing the scripts

You can edit the scripts found in the examples/ directory.  For example, the equipotentials.jl example looks something like

```julia
include("../src/IntroElectromagnetism.jl")
using .IntroElectromagnetism

# initialize the system of objects
particleTuple = (
    Particle(charge = 2, position = 1 * [cos(0 * 2pi/3), sin(0 * 2pi/3)]),
    Particle(charge = 2, position = 1 * [cos(1 * 2pi/3), sin(1 * 2pi/3)]),
    Particle(charge = 2, position = 1 * [cos(2 * 2pi/3), sin(2 * 2pi/3)]),
    Particle(charge = -1,position = [0, 0]),
    Particle(charge = 10, position = [2,0])
)
drawEquipotentials(particleTuple)
```

where particles can be added or removed or changed.

## Running the scripts

These scripts can be run from the command line (e.g. Powershell, bash, etc.) using

```bash
julia path/to/script.jl
```

For example, if the current working directory is the root of this project, the equipotentials.jl script can be run with

```bash
julia examples/equipotentials.jl
```

![Equipotentials for charge configuration above.](equipotentials_triangle.png)

## How to Cite

If you use IntroElectromagnetism.jl in your work, please cite using the reference given in [CITATION.cff](https://github.com/NonDairyNeutrino/IntroElectromagnetism.jl/blob/main/CITATION.cff).

## Contributing

If you want to make contributions of any kind, please first that a look into our [contributing guide directly on GitHub](docs/src/90-contributing.md) or the [contributing page on the website](https://NonDairyNeutrino.github.io/IntroElectromagnetism.jl/dev/90-contributing/)

---

### Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
