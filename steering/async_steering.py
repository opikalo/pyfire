from multiprocessing import Pool
import time
from random import randint
import os
import sys

import win32api
import win32con


key_map = {
    win32con.VK_SPACE: 'break',
    win32con.VK_UP: 'up',
    win32con.VK_DOWN: 'down',
    win32con.VK_RIGHT: 'right',
    win32con.VK_LEFT: 'left',
}

inv_key_map = dict((v,k) for k, v in key_map.iteritems())

gtime = time.time()
class AsyncFactory:
    def __init__(self, func, cb_func):
        self.func = func
        self.cb_func = cb_func
        self.pool = Pool()
 
    def call(self,*args, **kwargs):
        self.pool.apply_async(self.func, args, kwargs, self.cb_func)
 
    def wait(self):
        self.pool.close()
        self.pool.join()

def _key_down(key):
    print key_map[key], "pressed at", time.time() - gtime
    win32api.keybd_event(key, 0, 0, 0)
    
    
def _key_up(key):
    print key_map[key], "lifted at", time.time() -gtime
    win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP ,0)
 
  
def press(cmd, timeout):
    key = inv_key_map[cmd]

    _key_down(key)

    #print "PID: %d \t Value: %d \t Sleep: %d" % (os.getpid(), x ,sleep_duration)
    time.sleep(timeout)
    return key
 
def cb_func(key):
    _key_up(key)
 

if __name__=='__main__':
    async_steering = AsyncFactory(press, cb_func)

    async_steering.call('up', .1)
    async_steering.call('down', .2)
    async_steering.call('left', .3)
    async_steering.call('right', .4)
    async_steering.call('break', .5)

    async_steering.wait()

    async_steering = AsyncFactory(press, cb_func)
    async_steering.call('up', .1)
    async_steering.call('down', .2)
    async_steering.call('left', .3)
    async_steering.call('right', .4)
    async_steering.call('break', .5)
