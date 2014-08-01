package com.greensock.core
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class Animation extends Object
   {
      
      public function Animation(param1:Number = 0, param2:Object = null)
      {
         super();
         this.vars = param2 || {};
         if(this.vars._isGSVars)
         {
            this.vars = this.vars.vars;
         }
         _duration = _totalDuration = (param1) || (0);
         _delay = (Number(this.vars.delay)) || (0);
         _timeScale = 1;
         _totalTime = _time = 0;
         data = this.vars.data;
         _rawPrevTime = -1;
         if(_rootTimeline == null)
         {
            if(_rootFrame == -1)
            {
               _rootFrame = 0;
               _rootFramesTimeline = new SimpleTimeline();
               _rootTimeline = new SimpleTimeline();
               _rootTimeline._startTime = getTimer() / 1000;
               _rootFramesTimeline._startTime = 0;
               _rootTimeline._active = _rootFramesTimeline._active = true;
               ticker.addEventListener("enterFrame",_updateRoot,false,0,true);
            }
            else
            {
               return;
            }
         }
         var _loc3_:SimpleTimeline = this.vars.useFrames?_rootFramesTimeline:_rootTimeline;
         _loc3_.insert(this,_loc3_._time);
         _reversed = this.vars.reversed == true;
         if(this.vars.paused)
         {
            paused(true);
         }
      }
      
      public static var _rootFramesTimeline:SimpleTimeline;
      
      public static var _rootTimeline:SimpleTimeline;
      
      public static var ticker:Shape = new Shape();
      
      protected static var _rootFrame:Number = -1;
      
      public static function _updateRoot(param1:Event = null) : void
      {
         _rootFrame++;
         _rootTimeline.render((getTimer() / 1000 - _rootTimeline._startTime) * _rootTimeline._timeScale,false,false);
         _rootFramesTimeline.render((_rootFrame - _rootFramesTimeline._startTime) * _rootFramesTimeline._timeScale,false,false);
         ticker.dispatchEvent(_tickEvent);
      }
      
      protected static var _tickEvent:Event = new Event("tick");
      
      public static const version:Number = 12;
      
      public function delay(param1:Number = NaN) : *
      {
         if(!arguments.length)
         {
            return _delay;
         }
         if(_timeline.smoothChildTiming)
         {
            startTime(_startTime + param1 - _delay);
         }
         _delay = param1;
         return this;
      }
      
      public var _delay:Number;
      
      public function totalDuration(param1:Number = NaN) : *
      {
         _dirty = false;
         return !arguments.length?_totalDuration:duration(param1);
      }
      
      public function _enabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         _gc = !param1;
         _active = Boolean(param1 && !_paused && _totalTime > 0 && _totalTime < _totalDuration);
         if(!param2)
         {
            if((param1) && timeline == null)
            {
               _timeline.insert(this,_startTime - _delay);
            }
            else if(!param1 && !(timeline == null))
            {
               _timeline._remove(this,true);
            }
            
         }
         return false;
      }
      
      public function timeScale(param1:Number = NaN) : *
      {
         var _loc3_:* = NaN;
         if(!arguments.length)
         {
            return _timeScale;
         }
         var param1:Number = (param1) || (1.0E-6);
         if((_timeline) && (_timeline.smoothChildTiming))
         {
            _loc3_ = (_pauseTime) || _pauseTime == 0?_pauseTime:_timeline._totalTime;
            _startTime = _loc3_ - (_loc3_ - _startTime) * _timeScale / param1;
         }
         _timeScale = param1;
         return _uncache(false);
      }
      
      public var _prev:Animation;
      
      public function duration(param1:Number = NaN) : *
      {
         if(!arguments.length)
         {
            _dirty = false;
            return _duration;
         }
         _duration = _totalDuration = param1;
         _uncache(true);
         if(_timeline.smoothChildTiming)
         {
            if(_active)
            {
               if(param1 != 0)
               {
                  totalTime(_totalTime * param1 / _duration,true);
               }
            }
         }
         return this;
      }
      
      public function restart(param1:Boolean = false, param2:Boolean = true) : *
      {
         reversed(false);
         paused(false);
         return totalTime(param1?-_delay:0,param2);
      }
      
      public function render(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public var _reversed:Boolean;
      
      public var _active:Boolean;
      
      public var _timeline:SimpleTimeline;
      
      public var _rawPrevTime:Number;
      
      public var data;
      
      public var vars:Object;
      
      public function resume(param1:* = null, param2:Boolean = true) : *
      {
         if(arguments.length)
         {
            seek(param1,param2);
         }
         return paused(false);
      }
      
      public function paused(param1:Boolean = false) : *
      {
         if(!arguments.length)
         {
            return _paused;
         }
         if(param1 != _paused)
         {
            if(_timeline)
            {
               if(!param1)
               {
                  if(_timeline.smoothChildTiming)
                  {
                     _startTime = _startTime + (_timeline.rawTime() - _pauseTime);
                     _uncache(false);
                  }
               }
               _pauseTime = param1?_timeline.rawTime():NaN;
               _paused = param1;
               _active = !_paused && _totalTime > 0 && _totalTime < _totalDuration;
            }
         }
         if(_gc)
         {
            if(!param1)
            {
               _enabled(true,false);
            }
         }
         return this;
      }
      
      public function totalTime(param1:Number = NaN, param2:Boolean = false) : *
      {
         var _loc4_:SimpleTimeline = null;
         if(!arguments.length)
         {
            return _totalTime;
         }
         if(_timeline)
         {
            if(param1 < 0)
            {
               param1 = param1 + totalDuration();
            }
            if(_timeline.smoothChildTiming)
            {
               if(_dirty)
               {
                  totalDuration();
               }
               if(param1 > _totalDuration)
               {
                  param1 = _totalDuration;
               }
               _startTime = (_paused?_pauseTime:_timeline._time) - (!_reversed?param1:_totalDuration - param1) / _timeScale;
               if(!_timeline._dirty)
               {
                  _uncache(false);
               }
               if(!_timeline._active)
               {
                  _loc4_ = _timeline;
                  while(_loc4_._timeline)
                  {
                     _loc4_.totalTime(_loc4_._totalTime,true);
                     _loc4_ = _loc4_._timeline;
                  }
               }
            }
            if(_gc)
            {
               _enabled(true,false);
            }
            if(_totalTime != param1)
            {
               render(param1,param2,false);
            }
         }
         return this;
      }
      
      public var _totalTime:Number;
      
      public var _time:Number;
      
      public function play(param1:* = null, param2:Boolean = true) : *
      {
         if(arguments.length)
         {
            seek(param1,param2);
         }
         reversed(false);
         return paused(false);
      }
      
      public function invalidate() : *
      {
         return this;
      }
      
      public function _kill(param1:Object = null, param2:Object = null) : Boolean
      {
         return _enabled(false,false);
      }
      
      public var timeline:SimpleTimeline;
      
      public var _initted:Boolean;
      
      public function reversed(param1:Boolean = false) : *
      {
         if(!arguments.length)
         {
            return _reversed;
         }
         if(param1 != _reversed)
         {
            _reversed = param1;
            totalTime(_totalTime,true);
         }
         return this;
      }
      
      public var _paused:Boolean;
      
      public function startTime(param1:Number = NaN) : *
      {
         if(!arguments.length)
         {
            return _startTime;
         }
         if(param1 != _startTime)
         {
            _startTime = param1;
            if(timeline)
            {
               if(timeline._sortChildren)
               {
                  timeline.insert(this,param1 - _delay);
               }
            }
         }
         return this;
      }
      
      public var _startTime:Number;
      
      protected function _uncache(param1:Boolean) : *
      {
         var _loc2_:Animation = param1?this:timeline;
         while(_loc2_)
         {
            _loc2_._dirty = true;
            _loc2_ = _loc2_.timeline;
         }
         return this;
      }
      
      public var _dirty:Boolean;
      
      public var _next:Animation;
      
      public function time(param1:Number = NaN, param2:Boolean = false) : *
      {
         if(!arguments.length)
         {
            return _time;
         }
         if(_dirty)
         {
            totalDuration();
         }
         if(param1 > _duration)
         {
            param1 = _duration;
         }
         return totalTime(param1,param2);
      }
      
      public function kill(param1:Object = null, param2:Object = null) : *
      {
         _kill(param1,param2);
         return this;
      }
      
      public function reverse(param1:* = null, param2:Boolean = true) : *
      {
         if(arguments.length)
         {
            seek(param1 || totalDuration(),param2);
         }
         reversed(true);
         return paused(false);
      }
      
      protected var _onUpdate:Function;
      
      public var _pauseTime:Number;
      
      public var _duration:Number;
      
      public function seek(param1:*, param2:Boolean = true) : *
      {
         return totalTime(Number(param1),param2);
      }
      
      public var _totalDuration:Number;
      
      public var _gc:Boolean;
      
      public function pause(param1:* = null, param2:Boolean = true) : *
      {
         if(arguments.length)
         {
            seek(param1,param2);
         }
         return paused(true);
      }
      
      public var _timeScale:Number;
      
      public function eventCallback(param1:String, param2:Function = null, param3:Array = null) : *
      {
         var _loc5_:* = 0;
         if(param1 == null)
         {
            return null;
         }
         if(param1.substr(0,2) == "on")
         {
            if(arguments.length == 1)
            {
               return vars[param1];
            }
            if(param2 == null)
            {
               delete vars[param1];
               true;
            }
            else
            {
               vars[param1] = param2;
               vars[param1 + "Params"] = param3;
               if(param3)
               {
                  _loc5_ = param3.length;
                  while(--_loc5_ > -1)
                  {
                     if(param3[_loc5_] == "{self}")
                     {
                        param3 = vars[param1 + "Params"] = param3.concat();
                        param3[_loc5_] = this;
                     }
                  }
               }
            }
            if(param1 == "onUpdate")
            {
               _onUpdate = param2;
            }
         }
         return this;
      }
   }
}
