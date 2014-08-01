package com.greensock
{
   import flash.events.IEventDispatcher;
   import com.greensock.plugins.*;
   import flash.display.Shape;
   import com.greensock.core.Animation;
   import com.greensock.core.SimpleTimeline;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.utils.getTimer;
   import com.greensock.events.TweenEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import com.greensock.core.PropTween;
   
   public class TweenMax extends TweenLite implements IEventDispatcher
   {
      
      {
      TweenPlugin.activate([AutoAlphaPlugin,EndArrayPlugin,FramePlugin,RemoveTintPlugin,TintPlugin,VisiblePlugin,VolumePlugin,BevelFilterPlugin,BezierPlugin,BezierThroughPlugin,BlurFilterPlugin,ColorMatrixFilterPlugin,ColorTransformPlugin,DropShadowFilterPlugin,FrameLabelPlugin,GlowFilterPlugin,HexColorsPlugin,RoundPropsPlugin,ShortRotationPlugin]);
      }
      
      public function TweenMax(param1:Object, param2:Number, param3:Object)
      {
         super(param1,param2,param3);
         if(TweenLite.version < 12)
         {
            throw new Error("TweenMax error! Please update your TweenLite class or try deleting your ASO files. TweenMax requires a more recent version. Download updates at http://www.greensock.com.");
         }
         else
         {
            _yoyo = this.vars.yoyo == true;
            _repeat = uint(this.vars.repeat);
            _repeatDelay = (this.vars.repeatDelay) || (0);
            _dirty = true;
            if((this.vars.onCompleteListener) || (this.vars.onUpdateListener) || (this.vars.onStartListener) || (this.vars.onRepeatListener) || (this.vars.onReverseCompleteListener))
            {
               _initDispatcher();
               if(_duration == 0)
               {
                  if(_delay == 0)
                  {
                     if(this.vars.immediateRender)
                     {
                        _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.UPDATE));
                        _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.COMPLETE));
                     }
                  }
               }
            }
            return;
         }
      }
      
      public static function resumeAll(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true) : void
      {
         _changePause(false,param1,param2,param3);
      }
      
      public static function fromTo(param1:Object, param2:Number, param3:Object, param4:Object) : TweenMax
      {
         var param4:Object = _prepVars(param4,false);
         var param3:Object = _prepVars(param3,false);
         param4.startAt = param3;
         if(param3.immediateRender)
         {
            param4.immediateRender = true;
         }
         return new TweenMax(param1,param2,param4);
      }
      
      public static var allFromTo:Function = staggerFromTo;
      
      public static function staggerTo(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array
      {
         var copy:Object = null;
         var i:int = 0;
         var p:String = null;
         var targets:Array = param1;
         var duration:Number = param2;
         var vars:Object = param3;
         var stagger:Number = param4;
         var onCompleteAll:Function = param5;
         var onCompleteAllParams:Array = param6;
         vars = _prepVars(vars,false);
         var a:Array = [];
         var l:int = targets.length;
         var delay:Number = (vars.delay) || (0);
         i = 0;
         while(i < l)
         {
            copy = {};
            for(p in vars)
            {
               copy[p] = vars[p];
            }
            copy.delay = delay;
            if(i == l - 1)
            {
               if(onCompleteAll != null)
               {
                  copy.onComplete = function():void
                  {
                     if(vars.onComplete)
                     {
                        vars.onComplete.apply(null,vars.onCompleteParams);
                     }
                     onCompleteAll.apply(null,onCompleteAllParams);
                  };
               }
            }
            a[i] = new TweenMax(targets[i],duration,copy);
            delay = delay + stagger;
            i++;
         }
         return a;
      }
      
      public static var ticker:Shape = Animation.ticker;
      
      public static function pauseAll(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true) : void
      {
         _changePause(true,param1,param2,param3);
      }
      
      public static function staggerFromTo(param1:Array, param2:Number, param3:Object, param4:Object, param5:Number = 0, param6:Function = null, param7:Array = null) : Array
      {
         var param4:Object = _prepVars(param4,false);
         var param3:Object = _prepVars(param3,false);
         param4.startAt = param3;
         if(param3.immediateRender)
         {
            param4.immediateRender = true;
         }
         return staggerTo(param1,param2,param4,param5,param6,param7);
      }
      
      public static function getTweensOf(param1:*) : Array
      {
         return TweenLite.getTweensOf(param1);
      }
      
      public static const version:Number = 12;
      
      public static function killTweensOf(param1:*, param2:Object = null) : void
      {
         TweenLite.killTweensOf(param1,param2);
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenMax
      {
         return new TweenMax(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "onReverseComplete":param2,
            "onReverseCompleteParams":param3,
            "immediateRender":false,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      public static function isTweening(param1:Object) : Boolean
      {
         var _loc4_:TweenLite = null;
         var _loc2_:Array = TweenLite.getTweensOf(param1);
         var _loc3_:int = _loc2_.length;
         while(--_loc3_ > -1)
         {
            if(((_loc4_ = _loc2_[_loc3_])._active) || _loc4_._startTime == _loc4_.timeline._time && (_loc4_.timeline._active))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function killAll(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true) : void
      {
         var _loc7_:* = false;
         var _loc9_:Animation = null;
         var _loc5_:Array = getAllTweens(param4);
         var _loc6_:int = _loc5_.length;
         var _loc8_:Boolean = (param2) && (param3) && (param4);
         while(--_loc6_ > -1)
         {
            _loc9_ = _loc5_[_loc6_];
            if((_loc8_) || _loc9_ is SimpleTimeline || (_loc7_ = TweenLite(_loc9_).target == TweenLite(_loc9_).vars.onComplete) && (param3) || (param2) && !_loc7_)
            {
               if(param1)
               {
                  _loc9_.totalTime(_loc9_.totalDuration());
               }
               else
               {
                  _loc9_._enabled(false,false);
               }
            }
         }
      }
      
      public static function killChildTweensOf(param1:DisplayObjectContainer, param2:Boolean = false) : void
      {
         var _loc4_:Object = null;
         var _loc5_:DisplayObjectContainer = null;
         var _loc3_:Array = getAllTweens(false);
         var _loc6_:int = _loc3_.length;
         while(--_loc6_ > -1)
         {
            _loc4_ = _loc3_[_loc6_].target;
            if(_loc4_ is DisplayObject)
            {
               _loc5_ = _loc4_.parent;
               while(_loc5_)
               {
                  if(_loc5_ == param1)
                  {
                     if(param2)
                     {
                        _loc3_[_loc6_].totalTime(_loc3_[_loc6_].totalDuration());
                     }
                     else
                     {
                        _loc3_[_loc6_]._enabled(false,false);
                     }
                  }
                  _loc5_ = _loc5_.parent;
               }
            }
         }
      }
      
      private static function _changePause(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc6_:* = false;
         var _loc7_:Animation = null;
         var _loc5_:Array = getAllTweens(param4);
         var _loc8_:Boolean = (param2) && (param3) && (param4);
         var _loc9_:int = _loc5_.length;
         while(--_loc9_ > -1)
         {
            _loc7_ = _loc5_[_loc9_];
            if((_loc8_) || _loc7_ is SimpleTimeline || (_loc6_ = TweenLite(_loc7_).target == TweenLite(_loc7_).vars.onComplete) && (param3) || (param2) && !_loc6_)
            {
               _loc7_.paused(param1);
            }
         }
      }
      
      public static function set(param1:Object, param2:Object) : TweenMax
      {
         return new TweenMax(param1,0,param2);
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenMax
      {
         var param3:Object = _prepVars(param3,true);
         param3.runBackwards = true;
         return new TweenMax(param1,param2,param3);
      }
      
      public static var allFrom:Function = staggerFrom;
      
      public static function killDelayedCallsTo(param1:Function) : void
      {
         TweenLite.killTweensOf(param1);
      }
      
      protected static var _listenerLookup:Object = {
         "onCompleteListener":TweenEvent.COMPLETE,
         "onUpdateListener":TweenEvent.UPDATE,
         "onStartListener":TweenEvent.START,
         "onRepeatListener":TweenEvent.REPEAT,
         "onReverseCompleteListener":TweenEvent.REVERSE_COMPLETE
      };
      
      public static function globalTimeScale(param1:Number = NaN) : Number
      {
         if(!arguments.length)
         {
            return _rootTimeline == null?1:_rootTimeline._timeScale;
         }
         var param1:Number = (param1) || (1.0E-4);
         if(_rootTimeline == null)
         {
            TweenLite.to({},0,{});
         }
         var _loc3_:SimpleTimeline = _rootTimeline;
         var _loc4_:Number = getTimer() / 1000;
         _loc3_._startTime = _loc4_ - (_loc4_ - _loc3_._startTime) * _loc3_._timeScale / param1;
         _loc3_ = _rootFramesTimeline;
         _loc4_ = _rootFrame;
         _loc3_._startTime = _loc4_ - (_loc4_ - _loc3_._startTime) * _loc3_._timeScale / param1;
         _rootFramesTimeline._timeScale = _rootTimeline._timeScale = param1;
         return param1;
      }
      
      public static function getAllTweens(param1:Boolean = false) : Array
      {
         var _loc2_:Array = _getChildrenOf(_rootTimeline,param1);
         return _loc2_.concat(_getChildrenOf(_rootFramesTimeline,param1));
      }
      
      protected static function _getChildrenOf(param1:SimpleTimeline, param2:Boolean) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:* = 0;
         var _loc5_:Animation = param1._first;
         while(_loc5_)
         {
            if(_loc5_ is TweenLite)
            {
               _loc3_[_loc4_++] = _loc5_;
            }
            else
            {
               if(param2)
               {
                  _loc3_[_loc4_++] = _loc5_;
               }
               _loc3_ = _loc3_.concat(_getChildrenOf(SimpleTimeline(_loc5_),param2));
               _loc4_ = _loc3_.length;
            }
            _loc5_ = _loc5_._next;
         }
         return _loc3_;
      }
      
      public static function staggerFrom(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array
      {
         var param3:Object = _prepVars(param3,true);
         param3.runBackwards = true;
         return staggerTo(param1,param2,param3,param4,param5,param6);
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenMax
      {
         return new TweenMax(param1,param2,param3);
      }
      
      public static var allTo:Function = staggerTo;
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _dispatcher == null?false:_dispatcher.dispatchEvent(param1);
      }
      
      override public function invalidate() : *
      {
         _yoyo = Boolean(this.vars.yoyo == true);
         _repeat = (this.vars.repeat) || 0;
         _repeatDelay = (this.vars.repeatDelay) || (0);
         _hasUpdateListener = false;
         _initDispatcher();
         _uncache(true);
         return super.invalidate();
      }
      
      protected var _dispatcher:EventDispatcher;
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(_dispatcher)
         {
            _dispatcher.removeEventListener(param1,param2,param3);
         }
      }
      
      public var _yoyo:Boolean;
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(_dispatcher == null)
         {
            _dispatcher = new EventDispatcher(this);
         }
         if(param1 == TweenEvent.UPDATE)
         {
            _hasUpdateListener = true;
         }
         _dispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _dispatcher == null?false:_dispatcher.willTrigger(param1);
      }
      
      protected var _hasUpdateListener:Boolean;
      
      public function repeat(param1:int = 0) : *
      {
         if(!arguments.length)
         {
            return _repeat;
         }
         _repeat = param1;
         return _uncache(true);
      }
      
      override public function time(param1:Number = NaN, param2:Boolean = false) : *
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
         if((_yoyo) && !((_cycle & 1) === 0))
         {
            param1 = _duration - param1 + _cycle * (_duration + _repeatDelay);
         }
         else if(_repeat != 0)
         {
            param1 = param1 + _cycle * (_duration + _repeatDelay);
         }
         
         return totalTime(param1,param2);
      }
      
      override public function render(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc8_:* = false;
         var _loc9_:String = null;
         var _loc10_:PropTween = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc4_:Number = !_dirty?_totalDuration:totalDuration();
         var _loc5_:Number = _time;
         var _loc6_:Number = _totalTime;
         var _loc7_:Number = _cycle;
         if(param1 >= _loc4_)
         {
            _totalTime = _loc4_;
            _cycle = _repeat;
            if((_yoyo) && !((_cycle & 1) == 0))
            {
               _time = 0;
               ratio = _ease._calcEnd?_ease.getRatio(0):0;
            }
            else
            {
               _time = _duration;
               ratio = _ease._calcEnd?_ease.getRatio(1):1;
            }
            if(!_reversed)
            {
               _loc8_ = true;
               _loc9_ = "onComplete";
            }
            if(_duration == 0)
            {
               if(param1 == 0 || _rawPrevTime < 0)
               {
                  if(_rawPrevTime != param1)
                  {
                     param3 = true;
                  }
               }
               _rawPrevTime = param1;
            }
         }
         else if(param1 <= 0)
         {
            _totalTime = _time = _cycle = 0;
            ratio = _ease._calcEnd?_ease.getRatio(0):0;
            if(!(_loc6_ == 0) || _duration == 0 && _rawPrevTime > 0)
            {
               _loc9_ = "onReverseComplete";
               _loc8_ = _reversed;
            }
            if(param1 < 0)
            {
               _active = false;
               if(_duration == 0)
               {
                  if(_rawPrevTime >= 0)
                  {
                     param3 = true;
                  }
                  _rawPrevTime = param1;
               }
            }
            else if(!_initted)
            {
               param3 = true;
            }
            
         }
         else
         {
            _totalTime = _time = param1;
            if(_repeat != 0)
            {
               _loc11_ = _duration + _repeatDelay;
               _cycle = _totalTime / _loc11_ >> 0;
               if(_cycle !== 0)
               {
                  if(_cycle === _totalTime / _loc11_)
                  {
                     _cycle--;
                  }
               }
               _time = _totalTime - _cycle * _loc11_;
               if(_yoyo)
               {
                  if((_cycle & 1) != 0)
                  {
                     _time = _duration - _time;
                  }
               }
               if(_time > _duration)
               {
                  _time = _duration;
               }
               else if(_time < 0)
               {
                  _time = 0;
               }
               
            }
            if(_easeType)
            {
               _loc12_ = _time / _duration;
               _loc13_ = _easeType;
               _loc14_ = _easePower;
               if(_loc13_ == 1 || _loc13_ == 3 && _loc12_ >= 0.5)
               {
                  _loc12_ = 1 - _loc12_;
               }
               if(_loc13_ == 3)
               {
                  _loc12_ = _loc12_ * 2;
               }
               if(_loc14_ == 1)
               {
                  _loc12_ = _loc12_ * _loc12_;
               }
               else if(_loc14_ == 2)
               {
                  _loc12_ = _loc12_ * _loc12_ * _loc12_;
               }
               else if(_loc14_ == 3)
               {
                  _loc12_ = _loc12_ * _loc12_ * _loc12_ * _loc12_;
               }
               else if(_loc14_ == 4)
               {
                  _loc12_ = _loc12_ * _loc12_ * _loc12_ * _loc12_ * _loc12_;
               }
               
               
               
               if(_loc13_ == 1)
               {
                  ratio = 1 - _loc12_;
               }
               else if(_loc13_ == 2)
               {
                  ratio = _loc12_;
               }
               else if(_time / _duration < 0.5)
               {
                  ratio = _loc12_ / 2;
               }
               else
               {
                  ratio = 1 - _loc12_ / 2;
               }
               
               
            }
            else
            {
               ratio = _ease.getRatio(_time / _duration);
            }
         }
         
         if(_loc5_ == _time && !param3)
         {
            return;
         }
         if(!_initted)
         {
            _init();
            if(!_loc8_ && (_time))
            {
               ratio = _ease.getRatio(_time / _duration);
            }
         }
         if(!_active)
         {
            if(!_paused)
            {
               _active = true;
            }
         }
         if(_loc6_ == 0)
         {
            if(!(_totalTime == 0) || _duration == 0)
            {
               if(!param2)
               {
                  if(vars.onStart)
                  {
                     vars.onStart.apply(null,vars.onStartParams);
                  }
                  if(_dispatcher)
                  {
                     _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.START));
                  }
               }
            }
         }
         _loc10_ = _firstPT;
         while(_loc10_)
         {
            if(_loc10_.f)
            {
               _loc10_.t[_loc10_.p](_loc10_.c * ratio + _loc10_.s);
            }
            else
            {
               _loc10_.t[_loc10_.p] = _loc10_.c * ratio + _loc10_.s;
            }
            _loc10_ = _loc10_._next;
         }
         if(_onUpdate != null)
         {
            if(!param2)
            {
               _onUpdate.apply(null,vars.onUpdateParams);
            }
         }
         if(_hasUpdateListener)
         {
            if(!param2)
            {
               _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.UPDATE));
            }
         }
         if(_cycle != _loc7_)
         {
            if(!param2)
            {
               if(!_gc)
               {
                  if(vars.onRepeat)
                  {
                     vars.onRepeat.apply(null,vars.onRepeatParams);
                  }
                  if(_dispatcher)
                  {
                     _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.REPEAT));
                  }
               }
            }
         }
         if(_loc9_)
         {
            if(!_gc)
            {
               if(_loc8_)
               {
                  if(_timeline.autoRemoveChildren)
                  {
                     _enabled(false,false);
                  }
                  _active = false;
               }
               if(!param2)
               {
                  if(vars[_loc9_])
                  {
                     vars[_loc9_].apply(null,vars[_loc9_ + "Params"]);
                  }
                  if(_dispatcher)
                  {
                     _dispatcher.dispatchEvent(new TweenEvent(_loc9_ == "onComplete"?TweenEvent.COMPLETE:TweenEvent.REVERSE_COMPLETE));
                  }
               }
            }
         }
      }
      
      public function totalProgress(param1:Number = NaN) : *
      {
         return !arguments.length?_totalTime / totalDuration():totalTime(totalDuration() * param1,false);
      }
      
      public function updateTo(param1:Object, param2:Boolean = false) : *
      {
         var _loc4_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:PropTween = null;
         var _loc8_:* = NaN;
         var _loc3_:Number = ratio;
         if(param2)
         {
            if(timeline != null)
            {
               if(_startTime < _timeline._time)
               {
                  _startTime = _timeline._time;
                  _uncache(false);
                  if(_gc)
                  {
                     _enabled(true,false);
                  }
                  else
                  {
                     _timeline.insert(this,_startTime - _delay);
                  }
               }
            }
         }
         for(_loc4_ in param1)
         {
            this.vars[_loc4_] = param1[_loc4_];
         }
         if(_initted)
         {
            if(param2)
            {
               _initted = false;
            }
            else
            {
               if(_notifyPluginsOfEnabled)
               {
                  if(_firstPT != null)
                  {
                     _onPluginEvent("_onDisable",this);
                  }
               }
               if(_time / _duration > 0.998)
               {
                  _loc5_ = _time;
                  render(0,true,false);
                  _initted = false;
                  render(_loc5_,true,false);
               }
               else if(_time > 0)
               {
                  _initted = false;
                  _init();
                  _loc6_ = 1 / (1 - _loc3_);
                  _loc7_ = _firstPT;
                  while(_loc7_)
                  {
                     _loc8_ = _loc7_.s + _loc7_.c;
                     _loc7_.c = _loc7_.c * _loc6_;
                     _loc7_.s = _loc8_ - _loc7_.c;
                     _loc7_ = _loc7_._next;
                  }
               }
               
            }
         }
         return this;
      }
      
      protected var _cycle:int = 0;
      
      public function repeatDelay(param1:Number = NaN) : *
      {
         if(!arguments.length)
         {
            return _repeatDelay;
         }
         _repeatDelay = param1;
         return _uncache(true);
      }
      
      protected var _repeatDelay:Number = 0;
      
      public function yoyo(param1:Boolean = false) : *
      {
         if(!arguments.length)
         {
            return _yoyo;
         }
         _yoyo = param1;
         return this;
      }
      
      public function progress(param1:Number = NaN) : *
      {
         return !arguments.length?_time / duration():totalTime(duration() * param1 + _cycle * _duration,false);
      }
      
      protected function _initDispatcher() : Boolean
      {
         var _loc2_:String = null;
         var _loc1_:* = false;
         for(_loc2_ in _listenerLookup)
         {
            if(_loc2_ in vars)
            {
               if(vars[_loc2_] is Function)
               {
                  if(_dispatcher == null)
                  {
                     _dispatcher = new EventDispatcher(this);
                  }
                  _dispatcher.addEventListener(_listenerLookup[_loc2_],vars[_loc2_],false,0,true);
                  _loc1_ = true;
               }
            }
         }
         return _loc1_;
      }
      
      override public function totalDuration(param1:Number = NaN) : *
      {
         if(!arguments.length)
         {
            if(_dirty)
            {
               _totalDuration = _repeat == -1?9.99999999999E11:_duration * (_repeat + 1) + _repeatDelay * _repeat;
               _dirty = false;
            }
            return _totalDuration;
         }
         return _repeat == -1?this:duration((param1 - _repeat * _repeatDelay) / (_repeat + 1));
      }
      
      protected var _repeat:int = 0;
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _dispatcher == null?false:_dispatcher.hasEventListener(param1);
      }
   }
}
