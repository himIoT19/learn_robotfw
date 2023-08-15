from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager
from selenium import webdriver
from robot.libraries.BuiltIn import BuiltIn


def install_web_driver(browser=''):
    driver_path = ''
    if browser.lower() == 'chrome':
        driver_path = ChromeDriverManager().install()
        driver = webdriver.Chrome(executable_path=driver_path)
    elif browser.lower() == 'firefox':
        driver_path = GeckoDriverManager().install()
        driver = webdriver.Firefox(executable_path=driver_path)
    elif browser.lower() == 'edge':
        driver_path = EdgeChromiumDriverManager().install()
        driver = webdriver.Edge(executable_path=driver_path)
    BuiltIn().set_global_variable("${DRIVER}", driver_path)
    # return driver_path
