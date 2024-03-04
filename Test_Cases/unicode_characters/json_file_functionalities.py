import json

import os

dir_path = os.path.dirname(os.path.realpath(__file__))


def read_json_file(file_name='data.json'):
    """

    :param file_name:
    :return:
    """
    # Join the directory path and file name
    full_file_path = os.path.join(dir_path, file_name)
    # Opening JSON file
    f = open(full_file_path)

    # returns JSON object as
    # a dictionary
    return json.load(f)


def get_name():
    """

    :return:
    """
    return read_json_file()['name']
