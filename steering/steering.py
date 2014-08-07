import time

import win32api
import win32con

class Steering(object):
    def __init__(self):
        self.current_key = None

    def _key_event(self, key):
        win32api.keybd_event(key, 0, 0, 0)
        time.sleep(.1)
        win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)

    def manual_break(self):
        self._key_event(win32con.VK_SPACE)

    def gas(self):
        self._key_event(win32con.VK_UP)

    def right(self):
        self._key_event(win32con.VK_RIGHT)

    def left(self):
        self._key_event(win32con.VK_LEFT)


if __name__ == '__main__':
    s = Steering()

    while True:
        s.gas()
        time.sleep(.1)
