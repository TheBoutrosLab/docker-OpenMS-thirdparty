# docker-OpenMS-thirdparty

Docker image for the [OpenMS](https://www.openms.de/) command-line tools and
their compatible third-party search engines and adapters.

This image is maintained by the Boutros Lab and installs Bioconda's
`openms-thirdparty` bundle in a dedicated Miniforge/Conda environment on an
Ubuntu runtime image. The bundle includes the core OpenMS tools.
X!Tandem is installed separately from Bioconda and provides the `tandem.exe`
executable expected by OpenMS's `XTandemAdapter`.

## Version

| Component | Version |
|-----------|---------|
| OpenMS-thirdparty | 3.6.0 |
| X!Tandem | 15.12.15.2 |
| Miniforge | 26.1.1-2 |
| Ubuntu | 24.04 |

## Discussions

- [Issue tracker](https://github.com/TheBoutrosLab/docker-OpenMS-thirdparty/issues) to report errors and enhancement ideas.
- Discussions can take place in [docker-OpenMS-thirdparty Discussions](https://github.com/TheBoutrosLab/docker-OpenMS-thirdparty/discussions).
- [docker-OpenMS-thirdparty pull requests](https://github.com/TheBoutrosLab/docker-OpenMS-thirdparty/pulls) are also open for discussion.

## Contributors

Please see the list of [Contributors](https://github.com/TheBoutrosLab/docker-OpenMS-thirdparty/graphs/contributors) at GitHub.

## References

1. Röst HL, Sachsenberg T, Aiche S, et al. OpenMS: a flexible open-source software platform for mass spectrometry data analysis. *Nature Methods*. 2016;13:741-748. doi: [10.1038/nmeth.3959](https://doi.org/10.1038/nmeth.3959)
2. OpenMS project documentation: <https://openms.readthedocs.io/>
3. Bioconda package index: <https://bioconda.github.io/recipes/openms-meta/README.html>

## License

Author: Chenghao Zhu

The code and container recipes in docker-OpenMS-thirdparty are licensed under the
BSD 3-Clause License (`BSD-3-Clause`). See [LICENSE](LICENSE) for the terms.

Bundled software retains its respective upstream license.

Copyright (C) 2026 Sanford Burnham Prebys Medical Discovery Institute ("Boutros Lab")
