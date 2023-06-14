Switch PHP Version Script

This script allows you to switch between different PHP versions on your Apache server. You can use it to enable or disable specific PHP versions based on your requirements.
Usage

bash

$ switch-php <version>

Replace <version> with the desired PHP version number (e.g., 7 or 8). The script will disable all other PHP versions and enable the specified version.
Prerequisites

    Apache server
    a2dismod, a2enmod, and a2enconf utilities (available in Apache installation)
    sudo access to execute commands as a superuser

Instructions

    Clone this repository or download the shell script.

    Make the script executable by running the following command:

    bash

$ chmod +x switch-php.sh

Run the script with the desired PHP version as an argument. For example, to switch to PHP 7, use the following command:

bash

$ ./switch-php.sh 7

The script will disable all other PHP versions and enable the specified version. It will also restart the Apache service.

After the script completes, you can verify the PHP version by running the following command:

bash

    $ php -v

    This will display the currently active PHP version.

    Note: Please ensure that you have the necessary PHP versions installed on your system before using this script.

License

This script is released under the MIT License. Feel free to modify and distribute it as per your needs.