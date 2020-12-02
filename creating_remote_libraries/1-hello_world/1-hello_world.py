import sys
import os

from robotremoteserver import RobotRemoteServer

class HelloWorldLibrary(object):
    def hello(self, user):
        if len(user) == 0:
            user = "world"
        return "Hello "+user


if __name__ == '__main__':
    PORT = os.getenv('PORT', 8270)
    RobotRemoteServer(HelloWorldLibrary(), host="0.0.0.0", port=PORT, *sys.argv[1:])