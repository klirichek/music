1. Installing Sphinx on Windows
-------------------
Installing Sphinx on a Windows server is often easier than installing on a Linux environment;
unless you are preparing code patches, you can use the pre-compiled binary files from the Downloads
area on the website.


-  
    Extract everything from the .zip file you have downloaded -
    ``sphinx-2.3.2-beta-win32.zip``,
    or ``sphinx-2.3.2-beta-win32-pgsql.zip`` if you need PostgresSQL support as well.
    (We are using version 2.3.2-beta here for the sake of example only;
    be sure to change this to a specific version you're using.)
    You can use Windows Explorer in Windows XP and up to extract the files,
    or a freeware package like 7Zip to open the archive.

    For the remainder of this guide, we will assume that the folders are unzipped into ``C:\Sphinx``,
    such that ``searchd.exe`` can be found in ``C:\Sphinx\bin\searchd.exe``. If you decide
    to use any different location for the folders or configuration file, please change it accordingly.

-  
    Edit the contents of sphinx.conf.in - specifically entries relating to @CONFDIR@ - to paths suitable for your system.

-  
    Install the ``searchd`` system as a Windows service:

    **C:\Sphinx\bin> C:\Sphinx\bin\searchd --install --config C:\Sphinx\sphinx.conf.in --servicename SphinxSearch**

-  
    The ``searchd`` service will now be listed in the Services panel
    within the Management Console, available from Administrative Tools. It will not have been
    started, as you will need to configure it and build your indexes with ``indexer``
    before starting the service. A guide to do this can be found under
    Quick tour.

    During the next steps of the install (which involve running indexer pretty much as
    you would on Linux) you may find that you get an error relating to libmysql.dll not being found.
    If you have MySQL installed, you should find a copy of this library in your Windows directory,
    or sometimes in Windows\System32, or failing that in the MySQL core directories. If you
    do receive an error please copy libmysql.dll into the bin directory.

