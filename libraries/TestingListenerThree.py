import json

from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn


class TestingListenerThree:
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'
    ROBOT_LISTENER_API_VERSION = 3

    def __init__(self):
        self.start_suite_var = ''
        self.start_test_var = ''
        self.end_test_var = ''
        self.end_suite_var = ''
        self.suite_variables = {}
        logger.info('TestingListener initialized...')

    def start_suite(self, data, result):
        """
        Used to manipulate functionality of test automation
        :param data:
        :param result:
        :return:
        """
        for k, v in BuiltIn().get_variables().items():
            if k != '&{SUITE_METADATA}':
                self.suite_variables[k] = v
        self.start_suite_var = 'start_suite'
        logger.info(f'{self.start_suite_var} => suite_variables: \n{json.dumps(self.suite_variables, sort_keys=True, indent=4)}')
        logger.info(f"{self.start_suite_var} => data: {data}")
        logger.info(f"{self.start_suite_var} => result: \n{json.dumps(result, sort_keys=True, indent=4)}")

    def start_test(self, data, result):
        self.start_test_var = 'start_test'
        logger.info(f"{self.start_test_var} => data: {data}")
        logger.info(f"{self.start_test_var} => result: \n{json.dumps(result, sort_keys=True, indent=4)}")

    def end_test(self, data, result):
        self.end_test_var = 'end_test'
        logger.info(f"{self.end_test_var} => data: {data}")
        logger.info(f"{self.end_test_var} => result: \n{json.dumps(result, sort_keys=True, indent=4)}")

    def end_suite(self, data, result):
        self.end_suite_var = 'end_suite'
        logger.info(f"{self.end_suite_var} => data: {data}")
        logger.info(f"{self.end_suite_var} => result: \n{json.dumps(result, sort_keys=True, indent=4)}")
