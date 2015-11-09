### Overview
This is the reference environment for the manuscript ['Regulation of ERK-MAPK signaling in human epidermis'](https://dx.doi.org/10.1186/s12918-015-0187-6).  It executes code to reproduce specific results described in the manuscript.   The repository for the code is at Github [here](https://github.com/uomsystemsbiology/epidermal_data).

You can find more information about this research at the project page for the work [here](http://uomsystemsbiology.github.io/publications/human-skin-signalling/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](http://uomsystemsbiology.github.io/reference-environments/).    
   

### Instructions for use

This version of the reference environment is a Docker container.  To use it, install [Docker](https://www.docker.com/), then do:

```
$ docker pull uomsystemsbiology/epidermal_data_reference_environment
$ docker run uomsystemsbiology/epidermal_data_reference_environment /sbin/my_init -- ./run_experiments_supplementarysoftware2.sh
$ docker run uomsystemsbiology/epidermal_data_reference_environment /sbin/my_init -- ./run_experiments_supplementarysoftware3.sh
```

This will start the container and execute the scripts which reproduce the results described in the manuscript.  

### Other links

[Manuscript link](https://dx.doi.org/10.1186/s12918-015-0187-6)

[Project page link](http://uomsystemsbiology.github.io/publications/human-skin-signalling/)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/epidermal_data_reference_environment)

[Bootable ISO](https://dx.doi.org/10.4225/49/55DA8FA8CE707)

