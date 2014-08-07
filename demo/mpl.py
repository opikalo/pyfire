#see http://stackoverflow.com/questions/10391123/how-to-run-two-python-blocking-functions-matplotlib-show-and-twisted-reactor-r

if __name__ == '__main__':
    from wxmpl import main
    raise SystemExit(main())

from matplotlib import use
#force matplotlib to use wx with the use('wx') call before importing pyplot
use('wx')
from matplotlib import pyplot

from matplotlib.backends import backend_wx

from twisted.internet import wxreactor
#force Twisted to use wx with the wxreactor.install() call before importing reactor
wxreactor.install()

from twisted.internet import reactor, task
import numpy as np
import time 

from matplotlib.pylab import subplots,close
from matplotlib import cm

def randomwalk(dims=(256,256),n=20,sigma=5,alpha=0.95,seed=1):
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
class TwistedWxShow(backend_wx.Show):
    running = False
    def mainloop(self):
        if not self.running:
            self.running = True
            #starts the wx mainloop and the Twisted mainloop
            reactor.run()

prev_time = time.time()


fig, ax = subplots(1,1)
ax.set_aspect('equal')
ax.set_xlim(0,255)
ax.set_ylim(0,255)
ax.hold(True)
rw = randomwalk()
x,y = rw.next()
fig.canvas.draw()

# cache the background
#background = fig.canvas.copy_from_bbox(ax.bbox)

plt = ax.plot(x,y,'o')[0]
tic = time.time()

random_gen = np.random.mtrand.RandomState(seed=127260)

def main():

    def proof():
        global prev_time, rw, fig, ax, plt
        x,y = rw.next()
        plt.set_data(x,y)

        # restore background
        fig.canvas.restore_region(background)

        # redraw just the points
        ax.draw_artist(plt)

        # fill in the axes rectangle
        fig.canvas.blit(ax.bbox)

        now = time.time()
        if prev_time:
            print 'Twisted!', now - prev_time
        prev_time = now

    task.LoopingCall(proof).start(0.1)

    TwistedWxShow()()
