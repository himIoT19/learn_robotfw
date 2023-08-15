import json
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn


class TestingListenerTwo:
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.start_suite_var = ''
        self.start_test_var = ''
        self.start_keyword_var = ''
        self.end_keyword_var = ''
        self.end_test_var = ''
        self.end_suite_var = ''
        self.suite_variables = {}
        logger.info('TestingListener initialized...')

    def start_suite(self, name, attrs):
        """
        Used to manipulate functionality of test automation
        :param name:
        :param attrs:
        :return:
        """
        for k, v in BuiltIn().get_variables().items():
            if k != '&{SUITE_METADATA}':
                self.suite_variables[k] = v
        self.start_suite_var = 'start_suite'
        logger.info(f'{self.start_suite_var} => suite_variables: \n{json.dumps(self.suite_variables, sort_keys=True, indent=4)}', also_console=True)
        logger.info(f"{self.start_suite_var} => Name: {name}")
        logger.info(f"{self.start_suite_var} => Attrs: \n{json.dumps(attrs, sort_keys=True, indent=4)}", also_console=True)

    def start_test(self, name, attrs):
        self.start_test_var = 'start_test'
        logger.info(f"{self.start_test_var} => Name: {name}")
        logger.info(f"{self.start_test_var} => Attrs: \n{json.dumps(attrs, sort_keys=True, indent=4)}", also_console=True)

    def start_keyword(self, name, attrs):
        self.start_keyword_var = 'start_keyword'
        logger.info(f"{self.start_keyword_var} => Name: {name}")
        logger.info(f"{self.start_keyword_var} => Attrs: \n{json.dumps(attrs, sort_keys=True, indent=4)}", also_console=True)

    def end_keyword(self, name, attrs):
        self.end_keyword_var = 'end_keyword'
        logger.info(f"{self.end_keyword_var} => Name: {name}")
        logger.info(f"{self.end_keyword_var} => Attrs: \n{json.dumps(attrs, sort_keys=True, indent=4)}", also_console=True)

    def end_test(self, name, attrs):
        self.end_test_var = 'end_test'
        logger.info(f"{self.end_test_var} => Name: {name}")
        logger.info(f"{self.end_test_var} => Attrs: \n{json.dumps(attrs, sort_keys=True, indent=4)}", also_console=True)

    def end_suite(self, name, attrs):
        self.end_suite_var = 'end_suite'
        logger.info(f"{self.end_suite_var} => Name: {name}")
        logger.info(f"{self.end_suite_var} => Attrs: \n{json.dumps(attrs, sort_keys=True, indent=4)}", also_console=True)
