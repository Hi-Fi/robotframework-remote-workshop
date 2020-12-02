import sys
import os

from robotremoteserver import RobotRemoteServer

class FileLibrary(object):
    def send_file(self, file_name, file_object):
        f = open(file_name, 'wb')
        f.write(file_object)
        f.close()

    def read_file(self, file_name):
        return open(file_name, 'rb').read()


if __name__ == '__main__':
    PORT = os.getenv('PORT', 8270)
    RobotRemoteServer(FileLibrary(), host="0.0.0.0", port=PORT, *sys.argv[1:])