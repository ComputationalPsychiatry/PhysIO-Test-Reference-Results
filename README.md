[PhysIO Code](https://github.com/ComputationalPsychiatry/PhysIO) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15578836.svg)](https://doi.org/10.5281/zenodo.15578836) | [Examples](https://github.com/ComputationalPsychiatry/PhysIO-Examples) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15579086.svg)](https://doi.org/10.5281/zenodo.15579086) | [Test Data](https://github.com/ComputationalPsychiatry/PhysIO-Test-Reference-Results) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16579518.svg)](https://doi.org/10.5281/zenodo.16579518) | [Paper](http://www.sciencedirect.com/science/article/pii/S016502701630259X) [![DOI](https://zenodo.org/badge/DOI/10.1016/j.jneumeth.2016.10.019.svg)](https://doi.org/10.1016/j.jneumeth.2016.10.019)

Repository of Test Reference Results for TAPAS PhysIO Toolbox
==============================================================

Please note: If you are not a PhysIO developer or trying to debug PhysIO functionality, this is probably not the repository you are looking for. The example files to try out the toolbox are in the [PhysIO Examples Repository](https://github.com/ComputationalPsychiatry/PhysIO-Examples)

In this repository, you can find all reference results for unit and integration tests for the [TAPAS PhysIO Toolbox](https://github.com/ComputationalPsychiatry/PhysIO). 


Download
--------

You can download the reference results by cloning this repository as

```
git clone https://github.com/ComputationalPsychiatry/PhysIO-Test-Reference-Results.git PhysIO/test-reference-results 
```

Alternatively, you can download these reference results within Matlab running the `tapas_physio_download_test_reference_results` in the `tests` subfolder of the [PhysIO Code Repository](https://github.com/ComputationalPsychiatry/PhysIO).

Overview
--------

The general folder structure for the PhysIO repositories should be as follows:

```
PhysIO                     
|
|-> examples              
|
|-> test-reference-results 
```

where:

- `PhysIO` is your PhysIO code repository, code cloned from [GitHub](https://github.com/ComputationalPsychiatry/PhysIO) or release downloaded and unzipped from [Zenodo](https://doi.org/10.5281/zenodo.15578837)
- `PhysIO/examples` is your PhysIO examples repository, code and data cloned from [GitHub](https://github.com/ComputationalPsychiatry/PhysIO-Examples) or release downloaded and unzipped from [Zenodo](https://zenodo.org/records/15579087)
- `PhysIO/test-reference-results` is your PhysIO reference results repository, data cloned from [GitHub](https://github.com/ComputationalPsychiatry/PhysIO-Test=Reference-Results) or release downloaded and unzipped from [Zenodo](https://zenodo.org/records/16579519)
