import platform

ROBOT_LIBRARY_SCOPE = 'TEST SUITE'


def get_os_type():
    return platform.system().lower()
