import time

import win32api
import win32con

from twisted.internet import task
from twisted.internet import reactor

key_map = {
    win32con.VK_SPACE: 'break',
    win32con.VK_UP: 'up',
    win32con.VK_DOWN: 'down',
    win32con.VK_RIGHT: 'right',
    win32con.VK_LEFT: 'left',
}

inv_key_map = dict((v,k) for k, v in key_map.iteritems())

def _key_down(key):
    print key_map[key], "pressed at", time.time()
    win32api.keybd_event(key, 0, 0, 0)
    return key

def _key_up(key):
    print key_map[key], "lifted at", time.time()
    win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)
    return key

def press(cmd, timeout):
    key = inv_key_map[cmd]
    _key_down(key)
    d = task.deferLater(reactor, timeout, _key_up, key)
    
time.sleep(5)
press('up', 10)
press('right',10)

# f() will only be called if the event loop is started.
reactor.run()
