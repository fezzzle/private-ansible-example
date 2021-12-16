INITIAL_DIRECTORY=$(pwd)

cd {{ ansible_env.HOME }}/environments/fabric-environment/
INITIAL_VIRTUALENV_PATH=$(poetry env info --path)
cd ${INITIAL_DIRECTORY}
INITIAL_VIRTUALENV_PATH=${INITIAL_VIRTUALENV_PATH} zsh