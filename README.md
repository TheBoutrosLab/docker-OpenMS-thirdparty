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
| OpenMS-thirdparty | 3.5.0 |
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

docker-OpenMS-thirdparty is licensed under the GNU General Public License
version 2. See the file [LICENSE](LICENSE) for the terms of the GNU GPL license.

docker-OpenMS-thirdparty provides a containerized OpenMS runtime with compatible
third-party mass-spectrometry tools. The bundled tools retain their respective
upstream licenses.

Copyright (C) 2026 Sanford Burnham Prebys Medical Discovery Institute
("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
