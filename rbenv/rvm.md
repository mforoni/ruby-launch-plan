# Ruby Version Manager (RVM)

[RVM](http://www.betterspecs.org/) is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.

## Ubuntu installation

1. Add the PPA and install the package. Open a terminal and run:

    ```sh
    sudo apt-add-repository -y ppa:rael-gc/rvm
    sudo apt-get update
    sudo apt-get install rvm
    ```

1. You need to add all users that will be using rvm to 'rvm' group, and logout

    ```sh
    sudo usermod -a -G rvm marco
    logout
    ```

1. Login again, anyone using `rvm` will be operating with `umask u=rwx,g=rwx,o=rx`.

1. To start using RVM you need to run `source /etc/profile.d/rvm.sh` in all your open shell windows, in rare cases you need to reopen all shell windows.
Add that command to the user's `.bashrc` file.

1. Restart. A lot of changes were made (scripts that needs to be reloaded, you're now member of rvm group) and in order to properly get all them working, you need to login and logout. This requires not only close terminal, but restart your system.

1. Install a ruby. Now you're ready to install rubies. Open a terminal and run:

   ```sh
   rvm install ruby
   ```
