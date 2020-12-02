import sys
import os

from robotremoteserver import RobotRemoteServer
from CryptoLibrary import CryptoLibrary

# test    variable_decryption=True    key_path=${CURDIR}/private_key.json

if __name__ == '__main__':
    dir_path = os.path.dirname(os.path.realpath(__file__))
    PORT = os.getenv('PORT', 8270)
    RobotRemoteServer(CryptoLibrary(password="test",variable_decryption=True,key_path=dir_path), host="0.0.0.0", port=PORT, *sys.argv[1:])