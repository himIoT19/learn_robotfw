import json


def read_json_file(filename='data.json'):
    """

    :param filename:
    :return:
    """
    # Opening JSON file
    f = open('/home/himu/WS_Home/Python3/Robot_Framework/learn_rf/Test_Cases/unicode_characters/data.json', )

    # returns JSON object as
    # a dictionary
    return json.load(f)


def get_name():
    """

    :return:
    """
    return read_json_file()['name']
