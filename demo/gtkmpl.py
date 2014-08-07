#see http://stackoverflow.com/questions/10391123/how-to-run-two-python-blocking-functions-matplotlib-show-and-twisted-reactor-r

if __name__ == '__main__':
    from gtkmpl import main
    raise SystemExit(main())

from matplotlib import use
use('GTK')
from matplotlib import pyplot

from matplotlib.backends import backend_gtk

from twisted.internet import gtk2reactor
gtk2reactor.install()

from twisted.internet import reactor, task
from steering.twisted_steering import press

import numpy as np
import time 

from matplotlib.pylab import subplots,close
from matplotlib import cm

def randomwalk(dims=(700,500),n=20,sigma=5,alpha=0.95,seed=1):
    """ A simple random walk with memory """

    r,c = dims
    gen = np.random.RandomState(seed)
    pos = gen.rand(2,n)*((r,),(c,))
    old_delta = gen.randn(2,n)*sigma

    while 1:

        delta = (1.-alpha)*gen.randn(2,n)*sigma + alpha*old_delta
        pos += delta
        for ii in xrange(n):
            if not (0. <= pos[0,ii] < r) : pos[0,ii] = abs(pos[0,ii] % r)
            if not (0. <= pos[1,ii] < c) : pos[1,ii] = abs(pos[1,ii] % c)
        old_delta = delta
        yield pos

#replaced the call to pyplot.show() with a call to my own Show subclass with a mainloop
class TwistedShow(backend_gtk.Show):
    running = False
    def mainloop(self):
        if not self.running:
            self.running = True
            reactor.run()

prev_time = time.time()


fig, ax = subplots(1,1)
ax.set_aspect('equal')
ax.set_xlim(0,700)
ax.set_ylim(0,500)
ax.hold(True)
rw = randomwalk()
x,y = rw.next()
fig.canvas.draw()

plt = ax.plot(x,y,'o')[0]

def main():

    def proof():
        global prev_time, rw, fig, plt
        x,y = rw.next()

        plt.set_data(x,y)

        fig.canvas.draw()

        now = time.time()
        if prev_time:
            fps = 1/(now - prev_time)
            print 'fps=%2d\r' % fps,
        prev_time = now

    task.LoopingCall(proof).start(0)
    press('up', 10)
    press('right',10)

    TwistedShow()()
