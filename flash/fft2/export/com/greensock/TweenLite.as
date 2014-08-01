package com.greensock
{
   import com.greensock.core.Animation;
   import flash.utils.Dictionary;
   import flash.display.Shape;
   import com.greensock.easing.Ease;
   import flash.events.Event;
   import com.greensock.core.SimpleTimeline;
   import com.greensock.core.PropTween;
   
   public class TweenLite extends Animation
   {
      
      public function TweenLite(param1:Object, param2:Number, param3:Object)
      {
         var _loc4_:* = 0;
         super(param2,param3);
         if(param1 == null)
         {
            throw new Error("Cannot tween a null object. Duration: " + param2 + ", data: " + this.data);
         }
         else
         {
            if(!_overwriteLookup)
            {
               _overwriteLookup = {
                  "none":0,
                  "all":1,
                  "auto":2,
                  "concurrent":3,
                  "allOnStart":4,
                  "preexisting":5,
                  "true":1,
                  "false":0
               };
               ticker.addEventListener("enterFrame",_dumpGarbage,false,-1,true);
            }
            ratio = 0;
            this.target = param1;
            _ease = defaultEase;
            _overwrite = !("overwrite" in this.vars)?_overwriteLookup[defaultOverwrite]:typeof this.vars.overwrite === "number"?this.vars.overwrite >> 0:_overwriteLookup[this.vars.overwrite];
            if(this.target is Array && typeof this.target[0] === "object")
            {
               _targets = this.target.concat();
               _propLookup = [];
               _siblings = [];
               _loc4_ = _targets.length;
               while(--_loc4_ > -1)
               {
                  _siblings[_loc4_] = _register(_targets[_loc4_],this,false);
                  if(_overwrite == 1)
                  {
                     if(_siblings[_loc4_].length > 1)
                     {
                        _applyOverwrite(_targets[_loc4_],this,null,1,_siblings[_loc4_]);
                     }
                  }
               }
            }
            else
            {
               _propLookup = {};
               if(!(_siblings = _tweenLookup[param1]))
               {
                  _siblings = _tweenLookup[param1] = [this];
               }
               else
               {
                  _siblings[_siblings.length] = this;
                  if(_overwrite == 1)
                  {
                     _applyOverwrite(param1,this,null,1,_siblings);
                  }
               }
            }
            if((this.vars.immediateRender) || param2 == 0 && _delay == 0 && !(this.vars.immediateRender == false))
            {
               render(0,false,true);
            }
            return;
         }
      }
      
      public static function fromTo(param1:Object, param2:Number, param3:Object, param4:Object) : TweenLite
      {
         var param4:Object = _prepVars(param4);
         var param3:Object = _prepVars(param3);
         param4.startAt = param3;
         if(param3.immediateRender)
         {
            param4.immediateRender = true;
         }
         return new TweenLite(param1,param2,param4);
      }
      
      protected static var _tweenLookup:Dictionary = new Dictionary(false);
      
      public static var _onPluginEvent:Function;
      
      public static var ticker:Shape = Animation.ticker;
      
      public static var defaultEase:Ease = new Ease(null,null,1,1);
      
      public static var defaultOverwrite:String = "auto";
      
      public static function getTweensOf(param1:*) : Array
      {
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:TweenLite = null;
         if(param1 is Array && !(typeof param1[0] == "string") && !(typeof param1[0] == "number"))
         {
            _loc2_ = param1.length;
            _loc3_ = [];
            while(--_loc2_ > -1)
            {
               _loc3_ = _loc3_.concat(getTweensOf(param1[_loc2_]));
            }
            _loc2_ = _loc3_.length;
            while(--_loc2_ > -1)
            {
               _loc5_ = _loc3_[_loc2_];
               _loc4_ = _loc2_;
               while(--_loc4_ > -1)
               {
                  if(_loc5_ === _loc3_[_loc4_])
                  {
                     _loc3_.splice(_loc2_,1);
                  }
               }
            }
         }
         else
         {
            _loc3_ = _register(param1).concat();
            _loc2_ = _loc3_.length;
            while(--_loc2_ > -1)
            {
               if(_loc3_[_loc2_]._gc)
               {
                  _loc3_.splice(_loc2_,1);
               }
            }
         }
         return _loc3_;
      }
      
      public static const version:Number = 12;
      
      protected static function _register(param1:Object, param2:TweenLite = null, param3:Boolean = false) : Array
      {
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         if(!(_loc4_ = _tweenLookup[param1]))
         {
            _loc4_ = _tweenLookup[param1] = [];
         }
         if(param2)
         {
            _loc4_[_loc5_ = _loc4_.length] = param2;
            if(param3)
            {
               while(--_loc5_ > -1)
               {
                  if(_loc4_[_loc5_] === param2)
                  {
                     _loc4_.splice(_loc5_,1);
                  }
               }
            }
         }
         return _loc4_;
      }
      
      protected static function _applyOverwrite(param1:Object, param2:TweenLite, param3:Object, param4:int, param5:Array) : Boolean
      {
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:TweenLite = null;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         if(param4 == 1 || param4 >= 4)
         {
            _loc13_ = param5.length;
            _loc6_ = 0;
            while(_loc6_ < _loc13_)
            {
               if((_loc8_ = param5[_loc6_]) != param2)
               {
                  if(!_loc8_._gc)
                  {
                     if(_loc8_._enabled(false,false))
                     {
                        _loc7_ = true;
                     }
                  }
               }
               else if(param4 == 5)
               {
                  break;
               }
               
               _loc6_++;
            }
            return _loc7_;
         }
         var _loc9_:Number = param2._startTime + 1.0E-10;
         var _loc10_:Array = [];
         var _loc11_:* = 0;
         _loc6_ = param5.length;
         while(--_loc6_ > -1)
         {
            if(!((_loc8_ = param5[_loc6_]) === param2 || (_loc8_._gc) || (_loc8_._paused)))
            {
               if(_loc8_._timeline != param2._timeline)
               {
                  _loc12_ = (_loc12_) || (_checkOverlap(param2,0));
                  if(_checkOverlap(_loc8_,_loc12_) === 0)
                  {
                     _loc10_[_loc11_++] = _loc8_;
                  }
               }
               else if(_loc8_._startTime <= _loc9_)
               {
                  if(_loc8_._startTime + _loc8_.totalDuration() / _loc8_._timeScale + 1.0E-10 > _loc9_)
                  {
                     if(!((param2._duration == 0 || !_loc8_._initted) && _loc9_ - _loc8_._startTime <= 2.0E-10))
                     {
                        _loc10_[_loc11_++] = _loc8_;
                     }
                  }
               }
               
            }
         }
         _loc6_ = _loc11_;
         while(--_loc6_ > -1)
         {
            _loc8_ = _loc10_[_loc6_];
            if(param4 == 2)
            {
               if(_loc8_._kill(param3,param1))
               {
                  _loc7_ = true;
               }
            }
            if(!(param4 === 2) || !_loc8_._firstPT && (_loc8_._initted))
            {
               if(_loc8_._enabled(false,false))
               {
                  _loc7_ = true;
               }
            }
         }
         return _loc7_;
      }
      
      public static function killTweensOf(param1:*, param2:Object = null) : void
      {
         var _loc3_:Array = getTweensOf(param1);
         var _loc4_:int = _loc3_.length;
         while(--_loc4_ > -1)
         {
            TweenLite(_loc3_[_loc4_])._kill(param2,param1);
         }
      }
      
      protected static function _prepVars(param1:Object, param2:Boolean = false) : Object
      {
         if(param1._isGSVars)
         {
            param1 = param1.vars;
         }
         if((param2) && !("immediateRender" in param1))
         {
            param1.immediateRender = true;
         }
         return param1;
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenLite
      {
         return new TweenLite(param2,0,{
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
      
      public static var _plugins:Object = {};
      
      protected static var _overwriteLookup:Object;
      
      protected static var _reservedProps:Object = {
         "ease":1,
         "delay":1,
         "overwrite":1,
         "onComplete":1,
         "onCompleteParams":1,
         "onCompleteScope":1,
         "useFrames":1,
         "runBackwards":1,
         "startAt":1,
         "onUpdate":1,
         "onUpdateParams":1,
         "onUpdateScope":1,
         "onStart":1,
         "onStartParams":1,
         "onStartScope":1,
         "onReverseComplete":1,
         "onReverseCompleteParams":1,
         "onReverseCompleteScope":1,
         "onRepeat":1,
         "onRepeatParams":1,
         "onRepeatScope":1,
         "easeParams":1,
         "yoyo":1,
         "orientToBezier":1,
         "immediateRender":1,
         "repeat":1,
         "repeatDelay":1,
         "data":1,
         "paused":1,
         "reversed":1
      };
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         var param3:Object = _prepVars(param3,true);
         param3.runBackwards = true;
         return new TweenLite(param1,param2,param3);
      }
      
      public static function killDelayedCallsTo(param1:Function) : void
      {
         killTweensOf(param1);
      }
      
      public static function set(param1:Object, param2:Object) : TweenLite
      {
         return new TweenLite(param1,0,param2);
      }
      
      private static function _dumpGarbage(param1:Event) : void
      {
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         if(_rootFrame / 60 >> 0 === _rootFrame / 60)
         {
            for(_loc4_ in _tweenLookup)
            {
               _loc3_ = _tweenLookup[_loc4_];
               _loc2_ = _loc3_.length;
               while(--_loc2_ > -1)
               {
                  if(_loc3_[_loc2_]._gc)
                  {
                     _loc3_.splice(_loc2_,1);
                  }
               }
               if(_loc3_.length === 0)
               {
                  delete _tweenLookup[_loc4_];
                  true;
               }
            }
         }
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         return new TweenLite(param1,param2,param3);
      }
      
      private static function _checkOverlap(param1:Animation, param2:Number) : Number
      {
         var _loc3_:SimpleTimeline = param1._timeline;
         var _loc4_:Number = _loc3_._timeScale;
         var _loc5_:Number = param1._startTime;
         while(_loc3_._timeline)
         {
            _loc5_ = _loc5_ + _loc3_._startTime;
            _loc4_ = _loc4_ * _loc3_._timeScale;
            if(_loc3_._paused)
            {
               return -100;
            }
            _loc3_ = _loc3_._timeline;
         }
         _loc5_ = _loc5_ / _loc4_;
         return _loc5_ > param2?_loc5_ - param2:!param1._initted && _loc5_ - param2 < 2.0E-10?1.0E-10:(_loc5_ = _loc5_ + param1.totalDuration() / param1._timeScale / _loc4_ + 1.0E-10) > param2?0:_loc5_ - param2 - 1.0E-10;
      }
      
      protected function _initProps(param1:Object, param2:Object, param3:Array, param4:Object) : Boolean
      {
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:Object = null;
         var _loc9_:Array = null;
         if(param1 == null)
         {
            return false;
         }
         for(_loc5_ in vars)
         {
            if(_loc5_ in _reservedProps)
            {
               if(_loc5_ === "onStartParams" || _loc5_ === "onUpdateParams" || _loc5_ === "onCompleteParams" || _loc5_ === "onReverseCompleteParams" || _loc5_ === "onRepeatParams")
               {
                  if(_loc9_ = vars[_loc5_])
                  {
                     _loc6_ = _loc9_.length;
                     while(--_loc6_ > -1)
                     {
                        if(_loc9_[_loc6_] === "{self}")
                        {
                           _loc9_ = vars[_loc5_] = _loc9_.concat();
                           _loc9_[_loc6_] = this;
                        }
                     }
                  }
               }
            }
            else if(_loc5_ in _plugins && ((_loc8_ = new _plugins[_loc5_]())._onInitTween(param1,vars[_loc5_],this)))
            {
               _firstPT = new PropTween(_loc8_,"setRatio",0,1,_loc5_,true,_firstPT,_loc8_._priority);
               _loc6_ = _loc8_._overwriteProps.length;
               while(--_loc6_ > -1)
               {
                  param2[_loc8_._overwriteProps[_loc6_]] = _firstPT;
               }
               if((_loc8_._priority) || "_onInitAllProps" in _loc8_)
               {
                  _loc7_ = true;
               }
               if("_onDisable" in _loc8_ || "_onEnable" in _loc8_)
               {
                  _notifyPluginsOfEnabled = true;
               }
            }
            else
            {
               _firstPT = param2[_loc5_] = new PropTween(param1,_loc5_,0,1,_loc5_,false,_firstPT);
               _firstPT.s = !_firstPT.f?Number(param1[_loc5_]):param1[(_loc5_.indexOf("set")) || !("get" + _loc5_.substr(3) in param1)?_loc5_:"get" + _loc5_.substr(3)]();
               _firstPT.c = typeof vars[_loc5_] === "number"?Number(vars[_loc5_]) - _firstPT.s:Number(vars[_loc5_].split("=").join(""));
            }
            
         }
         if(param4)
         {
            if(_kill(param4,param1))
            {
               return _initProps(param1,param2,param3,param4);
            }
         }
         if(_overwrite > 1)
         {
            if(_firstPT != null)
            {
               if(param3.length > 1)
               {
                  if(_applyOverwrite(param1,this,param2,_overwrite,param3))
                  {
                     _kill(param2,param1);
                     return _initProps(param1,param2,param3,param4);
                  }
               }
            }
         }
         return _loc7_;
      }
      
      override public function _enabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:* = 0;
         if((param1) && (_gc))
         {
            if(_targets)
            {
               _loc3_ = _targets.length;
               while(--_loc3_ > -1)
               {
                  _siblings[_loc3_] = _register(_targets[_loc3_],this,true);
               }
            }
            else
            {
               _siblings = _register(target,this,true);
            }
         }
         super._enabled(param1,param2);
         if(_notifyPluginsOfEnabled)
         {
            if(_firstPT != null)
            {
               return _onPluginEvent(param1?"_onEnable":"_onDisable",this);
            }
         }
         return false;
      }
      
      protected var _targets:Array;
      
      public var ratio:Number;
      
      protected var _overwrite:int;
      
      public var _ease:Ease;
      
      protected var _siblings:Array;
      
      public var target:Object;
      
      protected var _overwrittenProps:Object;
      
      public var _propLookup:Object;
      
      override public function render(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:PropTween = null;
         var _loc8_:* = NaN;
         var _loc7_:Number = _time;
         if(param1 >= _duration)
         {
            _totalTime = _time = _duration;
            ratio = _ease._calcEnd?_ease.getRatio(1):1;
            if(!_reversed)
            {
               _loc4_ = true;
               _loc5_ = "onComplete";
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
            _totalTime = _time = 0;
            ratio = _ease._calcEnd?_ease.getRatio(0):0;
            if(!(_loc7_ == 0) || _duration == 0 && _rawPrevTime > 0)
            {
               _loc5_ = "onReverseComplete";
               _loc4_ = _reversed;
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
            if(_easeType)
            {
               _loc8_ = param1 / _duration;
               if(_easeType == 1 || _easeType == 3 && _loc8_ >= 0.5)
               {
                  _loc8_ = 1 - _loc8_;
               }
               if(_easeType == 3)
               {
                  _loc8_ = _loc8_ * 2;
               }
               if(_easePower == 1)
               {
                  _loc8_ = _loc8_ * _loc8_;
               }
               else if(_easePower == 2)
               {
                  _loc8_ = _loc8_ * _loc8_ * _loc8_;
               }
               else if(_easePower == 3)
               {
                  _loc8_ = _loc8_ * _loc8_ * _loc8_ * _loc8_;
               }
               else if(_easePower == 4)
               {
                  _loc8_ = _loc8_ * _loc8_ * _loc8_ * _loc8_ * _loc8_;
               }
               
               
               
               if(_easeType == 1)
               {
                  ratio = 1 - _loc8_;
               }
               else if(_easeType == 2)
               {
                  ratio = _loc8_;
               }
               else if(param1 / _duration < 0.5)
               {
                  ratio = _loc8_ / 2;
               }
               else
               {
                  ratio = 1 - _loc8_ / 2;
               }
               
               
            }
            else
            {
               ratio = _ease.getRatio(param1 / _duration);
            }
         }
         
         if(_time == _loc7_ && !param3)
         {
            return;
         }
         if(!_initted)
         {
            _init();
            if(!_loc4_ && (_time))
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
         if(_loc7_ == 0)
         {
            if(vars.onStart)
            {
               if(!(_time == 0) || _duration == 0)
               {
                  if(!param2)
                  {
                     vars.onStart.apply(null,vars.onStartParams);
                  }
               }
            }
         }
         _loc6_ = _firstPT;
         while(_loc6_)
         {
            if(_loc6_.f)
            {
               _loc6_.t[_loc6_.p](_loc6_.c * ratio + _loc6_.s);
            }
            else
            {
               _loc6_.t[_loc6_.p] = _loc6_.c * ratio + _loc6_.s;
            }
            _loc6_ = _loc6_._next;
         }
         if(_onUpdate != null)
         {
            if(!param2)
            {
               _onUpdate.apply(null,vars.onUpdateParams);
            }
         }
         if(_loc5_)
         {
            if(!_gc)
            {
               if(_loc4_)
               {
                  if(_timeline.autoRemoveChildren)
                  {
                     _enabled(false,false);
                  }
                  _active = false;
               }
               if(!param2)
               {
                  if(vars[_loc5_])
                  {
                     vars[_loc5_].apply(null,vars[_loc5_ + "Params"]);
                  }
               }
            }
         }
      }
      
      protected var _easeType:int;
      
      protected function _init() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = false;
         var _loc3_:PropTween = null;
         if(vars.startAt)
         {
            vars.startAt.overwrite = 0;
            vars.startAt.immediateRender = true;
            TweenLite.to(target,0,vars.startAt);
         }
         if(vars.ease is Ease)
         {
            _ease = vars.easeParams is Array?vars.ease.config.apply(vars.ease,vars.easeParams):vars.ease;
         }
         else if(typeof vars.ease === "function")
         {
            _ease = new Ease(vars.ease,vars.easeParams);
         }
         else
         {
            _ease = defaultEase;
         }
         
         _easeType = _ease._type;
         _easePower = _ease._power;
         _firstPT = null;
         if(_targets)
         {
            _loc1_ = _targets.length;
            while(--_loc1_ > -1)
            {
               if(_initProps(_targets[_loc1_],_propLookup[_loc1_] = {},_siblings[_loc1_],_overwrittenProps?_overwrittenProps[_loc1_]:null))
               {
                  _loc2_ = true;
               }
            }
         }
         else
         {
            _loc2_ = _initProps(target,_propLookup,_siblings,_overwrittenProps);
         }
         if(_loc2_)
         {
            _onPluginEvent("_onInitAllProps",this);
         }
         if(_overwrittenProps)
         {
            if(_firstPT == null)
            {
               if(typeof target !== "function")
               {
                  _enabled(false,false);
               }
            }
         }
         if(vars.runBackwards)
         {
            _loc3_ = _firstPT;
            while(_loc3_)
            {
               _loc3_.s = _loc3_.s + _loc3_.c;
               _loc3_.c = -_loc3_.c;
               _loc3_ = _loc3_._next;
            }
         }
         _onUpdate = vars.onUpdate;
         _initted = true;
      }
      
      protected var _notifyPluginsOfEnabled:Boolean;
      
      public var _firstPT:PropTween;
      
      override public function invalidate() : *
      {
         if(_notifyPluginsOfEnabled)
         {
            _onPluginEvent("_onDisable",this);
         }
         _firstPT = null;
         _overwrittenProps = null;
         _onUpdate = null;
         _initted = _active = _notifyPluginsOfEnabled = false;
         _propLookup = _targets?{}:[];
         return this;
      }
      
      override public function _kill(param1:Object = null, param2:Object = null) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:PropTween = null;
         var _loc7_:Object = null;
         var _loc8_:* = false;
         var _loc9_:Object = null;
         var _loc10_:* = false;
         if(param1 === "all")
         {
            param1 = null;
         }
         if(param1 == null)
         {
            if(param2 == null || param2 == this.target)
            {
               return _enabled(false,false);
            }
         }
         var param2:Object = param2 || _targets || this.target;
         if(param2 is Array && typeof param2[0] === "object")
         {
            _loc3_ = param2.length;
            while(--_loc3_ > -1)
            {
               if(_kill(param1,param2[_loc3_]))
               {
                  _loc8_ = true;
               }
            }
         }
         else
         {
            if(_targets)
            {
               _loc3_ = _targets.length;
               while(--_loc3_ > -1)
               {
                  if(param2 === _targets[_loc3_])
                  {
                     _loc7_ = _propLookup[_loc3_] || {};
                     _overwrittenProps = _overwrittenProps || [];
                     _loc4_ = _overwrittenProps[_loc3_] = param1?_overwrittenProps[_loc3_] || {}:"all";
                     break;
                  }
               }
            }
            else
            {
               if(param2 !== this.target)
               {
                  return false;
               }
               _loc7_ = _propLookup;
               _loc4_ = _overwrittenProps = param1?_overwrittenProps || {}:"all";
            }
            if(_loc7_)
            {
               _loc9_ = param1 || _loc7_;
               _loc10_ = !(param1 == _loc4_) && !(_loc4_ == "all") && !(param1 == _loc7_) && (param1 == null || !(param1._tempKill == true));
               for(_loc5_ in _loc9_)
               {
                  if(_loc6_ = _loc7_[_loc5_])
                  {
                     if((_loc6_.pg) && (_loc6_.t._kill(_loc9_)))
                     {
                        _loc8_ = true;
                     }
                     if(!_loc6_.pg || _loc6_.t._overwriteProps.length === 0)
                     {
                        if(_loc6_._prev)
                        {
                           _loc6_._prev._next = _loc6_._next;
                        }
                        else if(_loc6_ == _firstPT)
                        {
                           _firstPT = _loc6_._next;
                        }
                        
                        if(_loc6_._next)
                        {
                           _loc6_._next._prev = _loc6_._prev;
                        }
                        _loc6_._next = _loc6_._prev = null;
                     }
                     delete _loc7_[_loc5_];
                     true;
                  }
                  if(_loc10_)
                  {
                     _loc4_[_loc5_] = 1;
                  }
               }
            }
         }
         return _loc8_;
      }
      
      protected var _easePower:int;
   }
}
