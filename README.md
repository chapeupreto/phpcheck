# phpcheck

`phpcheck` is a shell script written in `Bash` that helps you to lint your `.php` files in batch in order to check if there's any .php files with syntax errors.

# Requirements

- Unix-like OS
- Bash
- PHP


# Installation

phpcheck can be installed globally by doing the following steps:

```bash
chmod +x phpcheck.sh
mv phpcheck.sh /usr/local/bin/phpcheck
```

# Usage

Once `phpcheck` is installed, one can simply execute something like:

```bash
phpcheck /dir/where/my/php/files/are/
```

This will lint all `.php` files in the selected directory and it will outputs the ones with syntax errors.

> If no argument is supplied, then working directory will be used by default.

You can also lint just a single file:

`phpcheck myAwesomeFile.php`

# Contribute

Found this useful and wan't to make it better? Please fork this repo and pull request!
