import time

import win32api
import win32con

class Steering(object):
    def __init__(self):
        self.current_keys = []
        
        
    def _key_event(self, key):
        win32api.keybd_event(key, 0, 0, 0)
        self.current_keys.append(key)
        #time.sleep(.1)
        #win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)

    def _key_press(self, key):
        win32api.keybd_event(key, 0, 0, 0)
        time.sleep(.03)
        win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)


    def cancel_all(self):
        for key in self.current_keys:
            win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)

    def manual_break(self):
        self._key_press(win32con.VK_SPACE)

    def gas(self):
        key = win32con.VK_UP
        win32api.keybd_event(key, 0, 0, 0)
        time.sleep(.025)
        win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)


    def right(self):
        self._key_press(win32con.VK_RIGHT)

    def left(self):
        self._key_press(win32con.VK_LEFT)


if __name__ == '__main__':
    s = Steering()

    while True:
        s.gas()
        time.sleep(.1)
