if __name__ == '__main__':
    from mpl import main
    raise SystemExit(main())

from matplotlib import use
use('GTK')
from matplotlib import pyplot

from matplotlib.backends import backend_gtk

from twisted.internet import gtk2reactor
gtk2reactor.install()

from twisted.internet import reactor, task

class TwistedGtkShow(backend_gtk.Show):
    running = False
    def mainloop(self):
        if not self.running:
            self.running = True
            reactor.run()

def main():
    pyplot.plot([1,2,3,4])
    pyplot.ylabel('some numbers')

    def proof():
        print 'Twisted!'
    task.LoopingCall(proof).start(3)

    TwistedGtkShow()()
