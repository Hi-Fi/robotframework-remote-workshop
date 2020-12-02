import sys
import os
import urllib.request
import base64

from robotremoteserver import RobotRemoteServer

# https://gist.github.com/hmm01i/0b969b378e3b2455ff2ed7c2405f43bd
class AuthenticateLibrary(object):
    def authenticate(self, username, password):
        if len(username) == 0:
            username = "test"
        if len(password) == 0:
            password = "test"
        url = f"https://httpbin.org/basic-auth/{username}/{password}"
        req = urllib.request.Request(url)
        b64auth = base64.standard_b64encode(str.encode(f"{username}:{password}")).decode("UTF-8")
        req.add_header("Authorization", f"Basic {b64auth}")
        result = urllib.request.urlopen(req)
        with urllib.request.urlopen(req) as response:
            return response.read().decode('utf-8')

if __name__ == '__main__':
    PORT = os.getenv('PORT', 8270)
    RobotRemoteServer(AuthenticateLibrary(), host="0.0.0.0", port=PORT, *sys.argv[1:])