### Overview
This is the reference environment for the manuscript ['Network link prediction by global silencing of indirect correlations'](https://dx.doi.org/10.1038/nbt.2601).  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the GitHub repository for the code(https://github.com/baruchbarzel/NatureBiotech-31-720.git).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](http://reference-environments-link.org).    

### Instructions for use

This version of the reference environment is a Docker container.  To use it, install [Docker](https://www.docker.com/), then do:

```
$ docker pull uomsystemsbiology/barzel2013network
$ docker run uomsystemsbiology/barzel2013network /sbin/my_init -- ./run_experiments_supplementarysoftware2.sh
$ docker run uomsystemsbiology/barzel2013network /sbin/my_init -- ./run_experiments_supplementarysoftware3.sh
```

This will start the container and execute the scripts which reproduce the results described in the manuscript.  

### Other links

[Manuscript link](https://dx.doi.org/10.1038/nbt.2601)

[Project page link](https://github.com/baruchbarzel/NatureBiotech-31-720.git)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/barzel2013network_reference_environment)

[Bootable ISO](https://dx.doi.org/10.4225/49/55DA8FA8CE707)

