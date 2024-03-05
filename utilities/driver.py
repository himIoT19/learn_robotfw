from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager
from selenium import webdriver
from robot.libraries.BuiltIn import BuiltIn


def install_web_driver(browser=''):
    """
        Install the web driver based on the specified browser.

        Args:
            browser (str): The browser to install the web driver for. Defaults to an empty string.

        Returns:
            None

        Examples:
            >>> install_web_driver('firefox')
            # Installs the Firefox web driver and sets the global variable "${DRIVER}" to the driver path.

            >>> install_web_driver('edge')
            # Installs the Edge web driver and sets the global variable "${DRIVER}" to the driver path.

            >>> install_web_driver()
            # Installs the Chrome web driver and sets the global variable "${DRIVER}" to the driver path.
        """
    driver_managers = {
        'firefox': GeckoDriverManager,
        'edge': EdgeChromiumDriverManager,
        'chrome': ChromeDriverManager  # Default to Chrome if an empty string or unknown browser is provided
    }

    browser = browser.lower() or 'chrome'  # Default to 'chrome' if an empty string is provided
    driver_manager_class = driver_managers.get(browser, ChromeDriverManager)
    driver_path = driver_manager_class().install()

    # driver_class = getattr(webdriver, browser.capitalize() if browser != 'edge' else 'Edge')
    # driver_class(executable_path=driver_path)

    BuiltIn().set_global_variable("${DRIVER}", driver_path)

# The commented 'return driver_path' can be removed or uncommented based on whether the function should return a value.
