import json


class LocatorsList(list):
    def __init__(self, *args):
        with open(args[0] + '.json') as locators_file:
            paths = [v for v in json.load(locators_file).values()]
            super(LocatorsList, self).__init__(paths)


class Locators(list):
    _REPLACE_ = '_ARG_00_'

    def __init__(self, *args):
        super(Locators, self).__init__([locator.replace(self._REPLACE_, args[1]) for locator in LocatorsList(args[0])])


print(Locators('selectables', 'SIGN IN'))
