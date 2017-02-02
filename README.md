# phpcheck

`phpcheck` helps you to lint your `.php` files in batch in order to check if there's any .php files with syntax errors.

# Install

phpcheck can be installed globally by doing the following steps:

```bash
chmod +x phpcheck.sh
mv phpcheck.sh /usr/local/bin/phpcheck
```

# Usage

Once `phpcheck` is installed, one can simply execute something like:

`phpcheck /dir/where/my/php/files/are/`

This will lint all `.php` files in the selected directory and outputs the ones with syntax errors.

You can also lint a single file:

`phpcheck myAwesomeFile.php`
