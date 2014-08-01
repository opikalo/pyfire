package _-Ea
{
   import flash.display.MovieClip;
   import flash.display.Loader;
   import flash.utils.Timer;
   import flash.net.LocalConnection;
   import flash.system.Security;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.display.LoaderInfo;
   import flash.system.Capabilities;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import _-K9._-1p;
   
   public class _-AH extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-GU = "onConnected";
         if(_loc1_ || (_loc2_))
         {
            if(_loc2_ && (_-AH))
            {
            }
            _-4j = _-1p._-IG(-953,393);
            _-BK = "services.swf";
            if(_loc1_)
            {
               _-6R = "MochiLC.swf";
               if(_loc1_ || (_loc2_))
               {
               }
               _dispatcher = new _-IT();
               return;
            }
         }
         _-9E = "__ms_";
         _-Jl = false;
         _-Bp = false;
         if(_loc2_)
         {
         }
         _-LK = false;
         widget = false;
         _dispatcher = new _-IT();
         return;
      }
      if(!_loc2_)
      {
         _-LK = false;
      }
      }
      
      public function _-AH()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            super();
         }
      }
      
      public static const _-GU:String = "onConnected";
      
      private static var _-9H:String;
      
      private static var _-8b:Object;
      
      private static var _-Cp:MovieClip;
      
      private static var _-3M:Loader;
      
      private static var _timer:Timer;
      
      private static var _-EM:Object;
      
      private static var _-4j:String = "http://www.mochiads.com/static/lib/services/";
      
      private static var _-BK:String = "services.swf";
      
      private static var _-6R:String = "MochiLC.swf";
      
      private static var _-2m:String;
      
      private static var _-9E:String = "__ms_";
      
      private static var _-GF:LocalConnection;
      
      private static var _-9A:String;
      
      private static var _-Jl:Boolean = false;
      
      private static var _-Bp:Boolean = false;
      
      public static var netup:Boolean = true;
      
      public static var _-LK:Boolean = false;
      
      public static var onError:Object;
      
      public static var widget:Boolean = false;
      
      private static var _-9l:MovieClip;
      
      private static var _-3w:Array;
      
      private static var _-CV:Number;
      
      private static var _callbacks:Object;
      
      private static var _dispatcher:_-IT = new _-IT();
      
      public static function get id() : String
      {
         return _-9H;
      }
      
      public static function get clip() : Object
      {
         return _-8b;
      }
      
      public static function get _-R() : Object
      {
         return _-Cp;
      }
      
      public static function _-2E() : String
      {
         return "3.9.4 as3";
      }
      
      public static function _-2J(param1:String) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-Db() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc2_)
         {
         }
         return Security.sandboxType == "localWithFile";
      }
      
      public static function set _-6F(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function get connected() : Boolean
      {
         return _-Bp;
      }
      
      public static function _-Hj(param1:String, param2:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function connect(param1:String, param2:Object, param3:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-9y() : void
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            if(_loc3_)
            {
               if(_loc3_ || (_loc3_))
               {
                  if((_-Bp) || (_-Bp))
                  {
                     if(_loc3_)
                     {
                        if(_-Cp != null)
                        {
                           if(_-Cp.parent != null)
                           {
                           }
                        }
                        _-Jl = _-Bp = false;
                        if(_loc3_)
                        {
                           flush(true);
                        }
                     }
                     try
                     {
                        _-9l.close();
                        if(_loc2_ && (_-AH))
                        {
                        }
                        try
                        {
                           _timer.stop();
                           if(_loc3_)
                           {
                              _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                              if(_loc3_ || (_-AH))
                              {
                                 _timer = null;
                              }
                           }
                        }
                        catch(error:Error)
                        {
                        }
                        return;
                     }
                     catch(error:Error)
                     {
                     }
                  }
                  if((_-Bp) || (_-Bp))
                  {
                     if(_timer != null)
                     {
                        if(!(_loc2_ && (_-AH)))
                        {
                           _timer.stop();
                           if(_loc3_)
                           {
                           }
                        }
                        _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                        if(_loc3_ || (_-AH))
                        {
                           _timer = null;
                        }
                     }
                     return;
                  }
                  if(_timer != null)
                  {
                     if(!(_loc2_ && (_-AH)))
                     {
                        _timer.stop();
                        if(_loc3_)
                        {
                        }
                     }
                     _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                     if(_loc3_ || (_-AH))
                     {
                        _timer = null;
                     }
                  }
                  return;
               }
               if(_loc3_ || (_loc3_))
               {
               }
            }
            if(_-Bp)
            {
               if(_loc3_)
               {
                  Sprite(_-Cp.parent).removeChild(_-Cp);
                  if(_loc2_ && (_loc2_))
                  {
                  }
                  flush(true);
                  _-9l.close();
                  if(!(_loc2_ && (_-AH)))
                  {
                     if(_timer != null)
                     {
                        if(_loc2_ && (_-AH))
                        {
                        }
                        _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                        if(_loc3_ || (_-AH))
                        {
                           _timer = null;
                        }
                     }
                     return;
                  }
                  _timer.stop();
                  if(_loc3_)
                  {
                     _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                     if(_loc3_ || (_-AH))
                     {
                        _timer = null;
                     }
                  }
                  return;
               }
               _-Cp = null;
            }
            _-Jl = _-Bp = false;
            if(_loc3_)
            {
               flush(true);
            }
            _-9l.close();
            if(!(_loc2_ && (_-AH)))
            {
               if(_timer != null)
               {
                  if(_loc2_ && (_-AH))
                  {
                  }
                  _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                  if(_loc3_ || (_-AH))
                  {
                     _timer = null;
                  }
               }
               return;
            }
            _timer.stop();
            if(_loc3_)
            {
               _timer.removeEventListener(TimerEvent.TIMER,_-4N);
               if(_loc3_ || (_-AH))
               {
                  _timer = null;
               }
            }
            return;
         }
         if(_-Cp.parent is Sprite)
         {
            if(_loc3_)
            {
               Sprite(_-Cp.parent).removeChild(_-Cp);
               if(_loc2_ && (_loc2_))
               {
               }
               flush(true);
               _-9l.close();
               if(!(_loc2_ && (_-AH)))
               {
                  if(_timer != null)
                  {
                     if(_loc2_ && (_-AH))
                     {
                     }
                     _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                     if(_loc3_ || (_-AH))
                     {
                        _timer = null;
                     }
                  }
                  return;
               }
               _timer.stop();
               if(_loc3_)
               {
                  _timer.removeEventListener(TimerEvent.TIMER,_-4N);
                  if(_loc3_ || (_-AH))
                  {
                     _timer = null;
                  }
               }
               return;
            }
            _-Cp = null;
         }
         _-Jl = _-Bp = false;
         if(_loc3_)
         {
            flush(true);
         }
         _-9l.close();
         if(!(_loc2_ && (_-AH)))
         {
            if(_timer != null)
            {
               if(_loc2_ && (_-AH))
               {
               }
               _timer.removeEventListener(TimerEvent.TIMER,_-4N);
               if(_loc3_ || (_-AH))
               {
                  _timer = null;
               }
            }
            return;
         }
         _timer.stop();
         if(_loc3_)
         {
            _timer.removeEventListener(TimerEvent.TIMER,_-4N);
            if(_loc3_ || (_-AH))
            {
               _timer = null;
            }
         }
      }
      
      public static function _-Ct() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            _-8b.addEventListener(Event.ENTER_FRAME,_-AH._-D-,false,0,true);
            if(_loc1_ && (_loc1_))
            {
            }
            _-Cp.visible = true;
            return;
         }
         if(_-Cp != null)
         {
            if(!_loc1_)
            {
               _-Cp.visible = true;
            }
         }
      }
      
      public static function _-Gr() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
            _-8b.removeEventListener(Event.ENTER_FRAME,_-AH._-D-);
         }
      }
      
      public static function _-D-(param1:Event = null) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var e:Event = param1;
         if(!(_loc4_ && (_-AH)))
         {
            if(!(_loc4_ && (_loc2_)))
            {
               if(_loc4_ && (_-AH))
               {
               }
               !(_-AH.clip == null);
               if(_loc5_)
               {
               }
               try
               {
                  if(_-AH.clip.numChildren > 1)
                  {
                     if(!_loc4_)
                     {
                        _-AH.clip.setChildIndex(_-AH._-R,_-AH.clip.numChildren - 1);
                     }
                  }
               }
               catch(errorObject:Error)
               {
                  if(!(_loc4_ && (_loc3_)))
                  {
                     _-8b.removeEventListener(Event.ENTER_FRAME,_-AH._-D-);
                  }
               }
               return;
            }
            if(_-AH.clip == null)
            {
               if(_-AH.clip.numChildren > 1)
               {
                  if(!_loc4_)
                  {
                     _-AH.clip.setChildIndex(_-AH._-R,_-AH.clip.numChildren - 1);
                  }
               }
            }
            return;
         }
         if(_loc4_)
         {
         }
         if(_-AH._-R == null)
         {
            if(_-AH.clip.numChildren > 1)
            {
               if(!_loc4_)
               {
                  _-AH.clip.setChildIndex(_-AH._-R,_-AH.clip.numChildren - 1);
               }
            }
         }
      }
      
      private static function init(param1:String, param2:Object) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_ || (param1))
         {
            _-9H = param1;
            if(_loc4_)
            {
               if(param2 != null)
               {
                  if(_loc3_ && (param1))
                  {
                  }
               }
               return;
            }
         }
         _-8b = param2;
         if(!(_loc3_ && (param1)))
         {
            _-p(param1,_-8b);
         }
      }
      
      public static function _-Kw(param1:Object = null, param2:Boolean = true) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-p(param1:String, param2:Object) : MovieClip
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(_-Cp != null)
         {
            return _-Cp;
         }
         if(!_-AH._-Db())
         {
            if(_loc7_)
            {
               _-AH.onError("NotConnected");
               if(!(_loc7_ || (_loc3_)))
               {
                  _-4j = _-6N(param2).servURL;
               }
            }
            return null;
         }
         if(_-6N(param2).servURL)
         {
            if(_loc7_ || (_-AH))
            {
               _-4j = _-6N(param2).servURL;
            }
         }
         if(_loc6_)
         {
         }
         if(_loc7_)
         {
            if(_-6N(param2).servicesURL)
            {
               if(!_loc6_)
               {
                  if(_loc7_)
                  {
                  }
                  _-FO(_-Cp);
                  _-3M = new Loader();
                  if(_loc7_ || (param2))
                  {
                     _-3M.contentLoaderInfo.addEventListener(Event.COMPLETE,_-9z);
                     _-3M.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_-9z);
                     if(!_loc6_)
                     {
                        _-3M.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_-Ka);
                     }
                  }
               }
               _loc4_ = new URLRequest(_loc3_);
               _loc5_ = new URLVariables();
               _loc5_.listenLC = _-9E;
               if(_loc7_)
               {
                  _loc5_.mochiad_options = param2.loaderInfo.parameters.mochiad_options;
                  if(!(_loc6_ && (param1)))
                  {
                     _loc5_.api_version = _-2E();
                     if(widget)
                     {
                        if(!(_loc6_ && (_-AH)))
                        {
                           _loc5_.widget = true;
                        }
                        _-3w = [];
                        _-CV = 0;
                        if(_loc7_)
                        {
                           _callbacks = {};
                           if(!_loc6_)
                           {
                              _timer = new Timer(10000,1);
                              if(_loc6_ && (param2))
                              {
                              }
                           }
                        }
                        _timer.start();
                     }
                     _loc4_.data = _loc5_;
                     if(_loc7_)
                     {
                        _-3M.load(_loc4_);
                        if(!(_loc6_ && (_loc3_)))
                        {
                           _-Cp.addChild(_-3M);
                           _-GF = new LocalConnection();
                           if(!_loc6_)
                           {
                              _-3w = [];
                              _-CV = 0;
                              if(_loc7_)
                              {
                              }
                              _timer.start();
                           }
                        }
                        _callbacks = {};
                        if(!_loc6_)
                        {
                           _timer = new Timer(10000,1);
                           if(_loc6_ && (param2))
                           {
                           }
                           _timer.start();
                        }
                     }
                  }
                  _timer.addEventListener(TimerEvent.TIMER,_-4N);
                  if(_loc7_ || (param2))
                  {
                     _timer.start();
                  }
               }
               return _-Cp;
            }
         }
         if(_loc7_)
         {
         }
         _-9E = _-9E + (Math.floor(new Date().time) + "_");
         if(_loc7_ || (_-AH))
         {
            _-AH._-2J(_loc3_);
            if(!(_loc6_ && (param1)))
            {
               _-Cp = new MovieClip();
               if(!(_loc6_ && (param2)))
               {
                  _-FO(_-Cp);
                  _-3M = new Loader();
                  if(_loc7_ || (param2))
                  {
                     _-3M.contentLoaderInfo.addEventListener(Event.COMPLETE,_-9z);
                     _-3M.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_-9z);
                     if(_loc6_)
                     {
                     }
                  }
               }
            }
            _loc4_ = new URLRequest(_loc3_);
            _loc5_ = new URLVariables();
            _loc5_.listenLC = _-9E;
            if(_loc7_)
            {
               _loc5_.mochiad_options = param2.loaderInfo.parameters.mochiad_options;
               if(!(_loc6_ && (param1)))
               {
                  _loc5_.api_version = _-2E();
                  if(widget)
                  {
                     if(!(_loc6_ && (_-AH)))
                     {
                        _loc5_.widget = true;
                     }
                     _-3w = [];
                     _-CV = 0;
                     if(_loc7_)
                     {
                        _callbacks = {};
                        if(!_loc6_)
                        {
                           _timer = new Timer(10000,1);
                           if(_loc6_ && (param2))
                           {
                           }
                        }
                     }
                     _timer.start();
                  }
                  _loc4_.data = _loc5_;
                  if(_loc7_)
                  {
                     _-3M.load(_loc4_);
                     if(!(_loc6_ && (_loc3_)))
                     {
                        _-Cp.addChild(_-3M);
                        _-GF = new LocalConnection();
                        if(!_loc6_)
                        {
                           _-3w = [];
                           _-CV = 0;
                           if(_loc7_)
                           {
                           }
                           _timer.start();
                        }
                     }
                     _callbacks = {};
                     if(!_loc6_)
                     {
                        _timer = new Timer(10000,1);
                        if(_loc6_ && (param2))
                        {
                        }
                        _timer.start();
                     }
                  }
               }
               _timer.addEventListener(TimerEvent.TIMER,_-4N);
               if(_loc7_ || (param2))
               {
                  _timer.start();
               }
            }
            return _-Cp;
         }
         _-3M.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_-Ka);
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         var _loc5_:URLVariables = new URLVariables();
         _loc5_.listenLC = _-9E;
         if(_loc7_)
         {
            _loc5_.mochiad_options = param2.loaderInfo.parameters.mochiad_options;
            if(!(_loc6_ && (param1)))
            {
               _loc5_.api_version = _-2E();
               if(widget)
               {
                  if(!(_loc6_ && (_-AH)))
                  {
                     _loc5_.widget = true;
                  }
                  _-3w = [];
                  _-CV = 0;
                  if(_loc7_)
                  {
                     _callbacks = {};
                     if(!_loc6_)
                     {
                        _timer = new Timer(10000,1);
                        if(_loc6_ && (param2))
                        {
                        }
                     }
                  }
                  _timer.start();
               }
               _loc4_.data = _loc5_;
               if(_loc7_)
               {
                  _-3M.load(_loc4_);
                  if(!(_loc6_ && (_loc3_)))
                  {
                     _-Cp.addChild(_-3M);
                     _-GF = new LocalConnection();
                     if(!_loc6_)
                     {
                        _-3w = [];
                        _-CV = 0;
                        if(_loc7_)
                        {
                        }
                        _timer.start();
                     }
                  }
                  _callbacks = {};
                  if(!_loc6_)
                  {
                     _timer = new Timer(10000,1);
                     if(_loc6_ && (param2))
                     {
                     }
                     _timer.start();
                  }
               }
            }
            _timer.addEventListener(TimerEvent.TIMER,_-4N);
            if(_loc7_ || (param2))
            {
               _timer.start();
            }
         }
         return _-Cp;
      }
      
      private static function _-9z(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:LoaderInfo = LoaderInfo(param1.target);
         if(!_loc3_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,_-9z);
            if(!_loc3_)
            {
               _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,_-9z);
               if(_loc3_)
               {
               }
            }
            _loc2_.removeEventListener(Event.COMPLETE,_-D5);
            if(_loc4_ || (_loc2_))
            {
            }
            return;
         }
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,_-Ka);
      }
      
      private static function _-FO(param1:Object) : void
      {
         var _loc6_:* = true;
         var _loc2_:Loader = new Loader();
         if(_loc5_ && (_-AH))
         {
         }
         var _loc3_:* = _-4j;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,_-9z);
         _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_-9z);
         if(_loc6_)
         {
            _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,_-D5);
            if(_loc5_ && (param1))
            {
            }
            return;
         }
         _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_-Ka);
         if(_loc6_)
         {
            _loc2_.load(_loc4_);
            if(_loc5_)
            {
            }
            return;
         }
         param1.addChild(_loc2_);
      }
      
      private static function _-D5(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Loader = LoaderInfo(param1.target).loader;
         if(_loc4_ || (param1))
         {
            _-9l = MovieClip(_loc2_.content);
            if(_loc4_)
            {
               _-3n();
            }
         }
      }
      
      private static function _-Ka(param1:Object) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            _-Cp._mochiad_ctr_failed = true;
            if(!_loc2_)
            {
               _-AH._-9y();
               if(_loc2_ && (param1))
               {
               }
            }
            _-AH.onError("IOError");
         }
      }
      
      public static function _-4N(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            if(!_-Bp)
            {
               if(_loc3_)
               {
                  _-Cp._mochiad_ctr_failed = true;
                  if(_loc2_)
                  {
                  }
               }
               _-AH._-9y();
               if(_loc3_)
               {
                  _-AH.onError("IOError");
               }
            }
            else
            {
               _timer.stop();
               _timer.removeEventListener(TimerEvent.TIMER,_-4N);
               if(_loc3_ || (_loc2_))
               {
               }
            }
            return;
         }
         _timer = null;
      }
      
      private static function _-3n() : void
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            _-9l.connect(_-9E);
            if(!(_loc2_ && (_loc2_)))
            {
               _-Cp.handshake = function(param1:Object):void
               {
                  _-AH._-6F = param1.newChannel;
               };
            }
         }
      }
      
      private static function _-0t() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function onReceive(param1:Object) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function onEvent(param1:Object) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function flush(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-3Q(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc6_:* = true;
         if(_loc6_ || (_-AH))
         {
            if(param1 != null)
            {
               if(_loc5_)
               {
               }
               param1.options.onError("NotConnected");
               if(_loc5_)
               {
               }
               param1 = {};
               if(_loc6_ || (param2))
               {
                  param1.error = true;
                  if(_loc6_)
                  {
                     param1.errorCode = "NotConnected";
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!(!(param2 == null) && !!(param2 == null)))
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc6_ || (param1))
                                    {
                                       try
                                       {
                                          param3.apply(param1);
                                       }
                                       catch(error:Error)
                                       {
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           if(_loc5_)
                           {
                           }
                        }
                        param2 == null;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  if(!(param3 is String))
                  {
                     if(param3 != null)
                     {
                        if(_loc6_ || (param1))
                        {
                           param3.apply(param1);
                        }
                     }
                  }
                  return;
               }
               try
               {
                  param2[param3](param1);
                  if(!_loc6_)
                  {
                     param3.apply(param1);
                  }
                  return;
               }
               catch(error:Error)
               {
               }
               return;
            }
            if(param1 != null)
            {
               if(param3 != null)
               {
                  param1 = {};
                  if(_loc6_ || (param2))
                  {
                     param1.error = true;
                     if(_loc6_)
                     {
                        param1.errorCode = "NotConnected";
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(!(!(param2 == null) && !!(param2 == null)))
                                 {
                                    if(param3 != null)
                                    {
                                       if(_loc6_ || (param1))
                                       {
                                          param3.apply(param1);
                                       }
                                    }
                                 }
                              }
                              if(_loc5_)
                              {
                              }
                           }
                           param2 == null;
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     if(!(param3 is String))
                     {
                        if(param3 != null)
                        {
                           if(_loc6_ || (param1))
                           {
                              param3.apply(param1);
                           }
                        }
                     }
                  }
                  param2[param3](param1);
                  if(!_loc6_)
                  {
                     param3.apply(param1);
                  }
               }
               return;
            }
            if(param3 != null)
            {
               param1 = {};
               if(_loc6_ || (param2))
               {
                  param1.error = true;
                  if(_loc6_)
                  {
                     param1.errorCode = "NotConnected";
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!(!(param2 == null) && !!(param2 == null)))
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc6_ || (param1))
                                    {
                                       param3.apply(param1);
                                    }
                                 }
                              }
                           }
                           if(_loc5_)
                           {
                           }
                        }
                        param2 == null;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  if(!(param3 is String))
                  {
                     if(param3 != null)
                     {
                        if(_loc6_ || (param1))
                        {
                           param3.apply(param1);
                        }
                     }
                  }
               }
               param2[param3](param1);
               if(!_loc6_)
               {
                  param3.apply(param1);
               }
            }
            return;
         }
         if(param1.onError != null)
         {
            param1.onError("NotConnected");
            if(_loc6_ || (_-AH))
            {
            }
            if(_loc5_)
            {
            }
            if(param1.options.onError == null)
            {
               param1.options.onError("NotConnected");
               if(_loc5_)
               {
               }
               param1 = {};
               if(_loc6_ || (param2))
               {
                  param1.error = true;
                  if(_loc6_)
                  {
                     param1.errorCode = "NotConnected";
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!(!(param2 == null) && !!(param2 == null)))
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc6_ || (param1))
                                    {
                                       param3.apply(param1);
                                    }
                                 }
                              }
                              return;
                           }
                           if(_loc5_)
                           {
                           }
                        }
                        param2 == null;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  if(!(param3 is String))
                  {
                     if(param3 != null)
                     {
                        if(_loc6_ || (param1))
                        {
                           param3.apply(param1);
                        }
                     }
                  }
                  return;
               }
               param2[param3](param1);
               if(!_loc6_)
               {
                  param3.apply(param1);
               }
               return;
            }
            if(param3 != null)
            {
               param1 = {};
               if(_loc6_ || (param2))
               {
                  param1.error = true;
                  if(_loc6_)
                  {
                     param1.errorCode = "NotConnected";
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!(!(param2 == null) && !!(param2 == null)))
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc6_ || (param1))
                                    {
                                       param3.apply(param1);
                                    }
                                 }
                              }
                           }
                           if(_loc5_)
                           {
                           }
                        }
                        param2 == null;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  if(!(param3 is String))
                  {
                     if(param3 != null)
                     {
                        if(_loc6_ || (param1))
                        {
                           param3.apply(param1);
                        }
                     }
                  }
               }
               param2[param3](param1);
               if(!_loc6_)
               {
                  param3.apply(param1);
               }
            }
            return;
         }
         if(!(_loc5_ && (_-AH)))
         {
            if(_loc5_)
            {
            }
         }
         if(param1.options == null)
         {
            param1.options.onError("NotConnected");
            if(_loc5_)
            {
            }
            param1 = {};
            if(_loc6_ || (param2))
            {
               param1.error = true;
               if(_loc6_)
               {
                  param1.errorCode = "NotConnected";
                  if(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           if(!(!(param2 == null) && !!(param2 == null)))
                           {
                              if(param3 != null)
                              {
                                 if(_loc6_ || (param1))
                                 {
                                    param3.apply(param1);
                                 }
                              }
                           }
                           return;
                        }
                        if(_loc5_)
                        {
                        }
                     }
                     param2 == null;
                     if(_loc5_)
                     {
                     }
                  }
               }
               if(!(param3 is String))
               {
                  if(param3 != null)
                  {
                     if(_loc6_ || (param1))
                     {
                        param3.apply(param1);
                     }
                  }
               }
               return;
            }
            param2[param3](param1);
            if(!_loc6_)
            {
               param3.apply(param1);
            }
            return;
         }
         if(param3 != null)
         {
            param1 = {};
            if(_loc6_ || (param2))
            {
               param1.error = true;
               if(_loc6_)
               {
                  param1.errorCode = "NotConnected";
                  if(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           if(!(!(param2 == null) && !!(param2 == null)))
                           {
                              if(param3 != null)
                              {
                                 if(_loc6_ || (param1))
                                 {
                                    param3.apply(param1);
                                 }
                              }
                           }
                        }
                        if(_loc5_)
                        {
                        }
                     }
                     param2 == null;
                     if(_loc5_)
                     {
                     }
                  }
               }
               if(!(param3 is String))
               {
                  if(param3 != null)
                  {
                     if(_loc6_ || (param1))
                     {
                        param3.apply(param1);
                     }
                  }
               }
            }
            param2[param3](param1);
            if(!_loc6_)
            {
               param3.apply(param1);
            }
         }
      }
      
      public static function send(param1:String, param2:Object = null, param3:Object = null, param4:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-6N(param1:Object) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-8k(param1:String, param2:String, param3:DisplayObjectContainer, param4:Function = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-Hp(param1:String, param2:Function) : MovieClip
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function _-KT(param1:String, param2:Object) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(_loc4_ && (param1)))
         {
            _dispatcher._-KT(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_)
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
   }
}
