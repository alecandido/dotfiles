import sys
from os.path import realpath, dirname, isfile

current_path = realpath(sys.argv[1])

while current_path != '/':
    env_activator = current_path + '/.venv_this'
    if isfile(env_activator):
        print(env_activator)
        break
    else:
        current_path = dirname(current_path)
