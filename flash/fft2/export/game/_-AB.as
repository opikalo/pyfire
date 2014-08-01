package game
{
   import flash.display.Sprite;
   import flash.display.Stage;
   import nape.constraint.PivotJoint;
   import _-Q._-1A;
   import flash.geom.Rectangle;
   import _-5n._-Je;
   import each ._-CN;
   import _-E4.MissionController;
   import _-E4._-3m;
   import _-BL._-BV;
   import _-3J._-d;
   import flash.events.Event;
   import fla.misc.mc_pointerFire2;
   import _-9I._-E7;
   import flash.events.MouseEvent;
   import nape.callbacks.InteractionListener;
   import nape.callbacks.CbEvent;
   import nape.callbacks.InteractionType;
   import _-D2._-B-;
   import _-E4.Level1;
   import nape.callbacks.CbType;
   import nape.dynamics.InteractionFilter;
   import flash.display.DisplayObject;
   import _-5n._-FH;
   import _-72.*;
   import fla.snd.*;
   import nape.geom.*;
   import nape.phys.*;
   import nape.shape.*;
   import nape.space.*;
   import nape.util.*;
   import each ._-60;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObjectContainer;
   import _-Q._-78;
   import _-Q._-5a;
   import nape.callbacks.InteractionCallback;
   import _-Q._-5W;
   import nape.dynamics.Arbiter;
   import nape.dynamics.ContactList;
   import nape.dynamics.Contact;
   import fla.fx.SparkAnim;
   import flash.utils.getTimer;
   import _-K2._-9x;
   import com.junkbyte.console.Cc;
   import _-44._-JC;
   import com.greensock.TweenLite;
   import each ._-AK;
   import fla.misc.mc_dummyParkingPoint;
   import flash.display.MovieClip;
   import _-Jw._-2L;
   import each ._-Io;
   import _-Ke._-FD;
   import _-3G._-1O;
   import _-5H._-LS;
   
   public class _-AB extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-C0 = "upgrade";
         if(_loc1_ || (_loc1_))
         {
            _-JR = "over";
            return = "pause";
            if(!_loc2_)
            {
               _-Jk = "gamewin";
            }
            _-7R = "keys";
            return;
         }
         _-68 = "finish";
      }
      }
      
      public function _-AB(param1:Sprite, param2:Stage, param3:Object = null)
      {
         var _loc6_:* = true;
         var _loc4_:_-LS = null;
         if(_loc6_ || (this))
         {
            this.playerCarList = [];
            if(_loc6_)
            {
               this._-0G = new Rectangle(0,0,this._-7J,this._-Ed);
               this._-AU = new Rectangle(30,30,this._-7J - 60,this._-Ed - 60);
               if(_loc6_)
               {
                  this.viewRec = new Rectangle(0,0,700,500);
                  if(!_loc5_)
                  {
                     this._-JB = [];
                     if(!(_loc5_ && (param1)))
                     {
                        super();
                        if(!(_loc5_ && (param2)))
                        {
                           instance = this;
                           Cc.debugch("WORLD",instance);
                           this._-8d = param1;
                           if(!_loc5_)
                           {
                              this.stage = param2;
                              if(!(_loc5_ && (param1)))
                              {
                                 this.params = param3;
                                 if(!_loc5_)
                                 {
                                    this._-Ek();
                                    this.initMission();
                                    if(_loc6_ || (param1))
                                    {
                                    }
                                 }
                              }
                              this.native(this.playerCar.body.position.x,this.playerCar.body.position.y);
                              if(_loc5_ && (param1))
                              {
                              }
                           }
                        }
                        if(get ._-Lh)
                        {
                           if(_loc6_)
                           {
                           }
                        }
                        _-9x._-H-(this.playerCarIndex);
                     }
                     this.pause = true;
                     if(_loc6_)
                     {
                        this._-8R();
                        if(_loc6_ || (param2))
                        {
                           this.native(this.playerCar.body.position.x,this.playerCar.body.position.y);
                           if(_loc5_ && (param1))
                           {
                           }
                        }
                     }
                  }
                  _loc4_ = new _-LS();
                  if(!(_loc5_ && (param2)))
                  {
                     this._-K-.addChild(_loc4_);
                     if(_loc6_)
                     {
                        _loc4_.alpha = 0.8;
                     }
                  }
                  _-9x._-H-(this.playerCarIndex);
               }
               this._-Bm(param3.level);
               return;
            }
            param1.addEventListener(Event.ADDED_TO_STAGE,this._-Fw);
            if(_loc6_)
            {
               if(get ._-Lh)
               {
                  if(_loc6_)
                  {
                  }
                  this._-Bm(param3.level);
                  return;
               }
               _-9x._-H-(this.playerCarIndex);
               this._-Bm(param3.level);
               return;
            }
            _loc4_ = new _-LS();
            if(!(_loc5_ && (param2)))
            {
               this._-K-.addChild(_loc4_);
               if(_loc6_)
               {
                  _loc4_.alpha = 0.8;
               }
            }
            _-9x._-H-(this.playerCarIndex);
            this._-Bm(param3.level);
            return;
         }
         this._-6();
         if(_loc6_ || (param1))
         {
            this.pause = true;
            if(_loc6_)
            {
               this._-8R();
               if(_loc6_ || (param2))
               {
                  this.native(this.playerCar.body.position.x,this.playerCar.body.position.y);
                  if(_loc5_ && (param1))
                  {
                  }
               }
            }
            param1.addEventListener(Event.ADDED_TO_STAGE,this._-Fw);
            if(_loc6_)
            {
               if(get ._-Lh)
               {
                  if(_loc6_)
                  {
                  }
               }
               _-9x._-H-(this.playerCarIndex);
            }
            _loc4_ = new _-LS();
            if(!(_loc5_ && (param2)))
            {
               this._-K-.addChild(_loc4_);
               if(_loc6_)
               {
                  _loc4_.alpha = 0.8;
               }
            }
            _-9x._-H-(this.playerCarIndex);
         }
         this._-Bm(param3.level);
      }
      
      public static var instance:_-AB;
      
      public static const _-7n:String = "game";
      
      public static const _-C0:String = "upgrade";
      
      public static const _-JR:String = "over";
      
      public static const return:String = "pause";
      
      public static const _-Jk:String = "gamewin";
      
      public static const _-68:String = "finish";
      
      public static const _-G4:String = "mouse";
      
      public static const _-7R:String = "keys";
      
      public var DEBUG:Boolean = false;
      
      private var _-4f:String = "game";
      
      public var _-8d:Sprite;
      
      public var stage:Stage;
      
      public var space:Space;
      
      public var debug:Debug;
      
      private var _-LR:PivotJoint;
      
      public var playerCar:_-1A;
      
      public var playerCarIndex:int = 0;
      
      public var playerCarList:Array;
      
      public var maxCarCount:int = 5;
      
      public var maxHumansCount:int = 8;
      
      public var _-7J:int = 2800;
      
      public var _-Ed:int = 2800;
      
      public var _-0G:Rectangle;
      
      public var _-AU:Rectangle;
      
      public var viewRec:Rectangle;
      
      public var bottomLayer:Sprite;
      
      public var middleLayer:Sprite;
      
      public var carLayer:Sprite;
      
      public var topLayer:Sprite;
      
      public var _-D9:_-Je;
      
      public var pause:Boolean = false;
      
      public var _-I4:int;
      
      public var _-7j:_-CN;
      
      public var _-Im:Function;
      
      public var updateList:Array;
      
      public var enemyList:Array;
      
      public var _-F4:Array;
      
      public var _-Au:MissionController;
      
      public var level:_-3m;
      
      public var _-K-:_-BV;
      
      public var stats:_-d;
      
      public var params:Object;
      
      public var _-0i:Sprite;
      
      public function initMission() : void
      {
         var _loc3_:* = false;
         this.stats = new _-d();
         if(_loc2_)
         {
            this._-D9 = new _-Je(this._-7J,this._-Ed);
            if(_loc2_ || (this))
            {
               this._-D9.bitmap.alpha = 0.5;
               this._-8d.addChild(this.bottomLayer = new Sprite());
               if(_loc2_)
               {
                  this._-8d.addChild(this._-D9.bitmap);
                  this._-8d.addChild(this.middleLayer = new Sprite());
                  if(_loc2_ || (_loc3_))
                  {
                     this._-8d.addChild(this.carLayer = new Sprite());
                  }
                  this._-8d.addEventListener(Event.ADDED_TO_STAGE,this._-Fw);
                  if(_loc2_)
                  {
                  }
                  this._-Au = new MissionController();
                  if(_loc2_ || (_loc2_))
                  {
                     this.updateList.push(this._-Au);
                  }
                  return;
               }
               this.topLayer = new Sprite();
               this._-8d.addChild(_loc1_);
               if(_loc2_ || (_loc2_))
               {
                  this.updateList = new Array();
                  this.enemyList = new Array();
                  if(_loc2_)
                  {
                  }
                  this.bottomLayer.addChild(this._-D9.bitmap);
                  if(_loc2_)
                  {
                     this._-7j = new _-CN();
                     if(_loc2_ || (_loc2_))
                     {
                        this._-8d.addEventListener(Event.ADDED_TO_STAGE,this._-Fw);
                        if(_loc2_)
                        {
                        }
                        this._-Au = new MissionController();
                        if(_loc2_ || (_loc2_))
                        {
                        }
                        return;
                     }
                     this.topLayer.addChild(this._-0i);
                     this._-Au = new MissionController();
                     if(_loc2_ || (_loc2_))
                     {
                     }
                     return;
                  }
                  this.updateList.push(this._-Au);
                  return;
               }
               this._-8d.scrollRect = this.viewRec;
               this.bottomLayer.addChild(this._-D9.bitmap);
               if(_loc2_)
               {
                  this._-7j = new _-CN();
                  if(_loc2_ || (_loc2_))
                  {
                     this._-8d.addEventListener(Event.ADDED_TO_STAGE,this._-Fw);
                     if(_loc2_)
                     {
                     }
                     this._-Au = new MissionController();
                     if(_loc2_ || (_loc2_))
                     {
                     }
                     return;
                  }
                  this.topLayer.addChild(this._-0i);
                  this._-Au = new MissionController();
                  if(_loc2_ || (_loc2_))
                  {
                  }
                  return;
               }
               this.updateList.push(this._-Au);
               return;
            }
            this._-F4 = new Array();
            if(!_loc3_)
            {
               this.else ();
               if(!(_loc3_ && (_loc2_)))
               {
                  this._-8d.scrollRect = this.viewRec;
                  this.bottomLayer.addChild(this._-D9.bitmap);
                  if(_loc2_)
                  {
                  }
                  this.updateList.push(this._-Au);
               }
               this._-7j = new _-CN();
               if(_loc2_ || (_loc2_))
               {
                  this._-8d.addEventListener(Event.ADDED_TO_STAGE,this._-Fw);
                  if(_loc2_)
                  {
                  }
                  this._-Au = new MissionController();
                  if(_loc2_ || (_loc2_))
                  {
                     this.updateList.push(this._-Au);
                  }
               }
               this.topLayer.addChild(this._-0i);
               this._-Au = new MissionController();
               if(_loc2_ || (_loc2_))
               {
                  this.updateList.push(this._-Au);
               }
            }
            return;
         }
         this._-8d.addEventListener(Event.ENTER_FRAME,this._-DH);
         this._-0i = new mc_pointerFire2();
         if(!_loc3_)
         {
            this.topLayer.addChild(this._-0i);
            this._-Au = new MissionController();
            if(_loc2_ || (_loc2_))
            {
               this.updateList.push(this._-Au);
            }
         }
      }
      
      public function _-Fw(param1:Event = null) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this._-8d.removeEventListener(Event.ADDED_TO_STAGE,this._-Fw);
            _-E7._-6Y();
            _-E7.initialize(this._-8d.stage);
            if(!_loc3_)
            {
               this._-Im = this._-I5;
            }
            this.stage.addEventListener(MouseEvent.MOUSE_DOWN,this._-Gh);
            if(_loc2_)
            {
               this.stage.addEventListener(MouseEvent.MOUSE_UP,this._-3O);
            }
            this.stage.addEventListener(Event.DEACTIVATE,this._-J-);
            return;
         }
         if(get ._-Lh)
         {
            if(!(_loc3_ && (this)))
            {
               this.stage.addEventListener(MouseEvent.CLICK,this._-9P);
            }
            this.stage.addEventListener(MouseEvent.MOUSE_DOWN,this._-Gh);
            if(_loc2_)
            {
               this.stage.addEventListener(MouseEvent.MOUSE_UP,this._-3O);
            }
         }
         this.stage.addEventListener(Event.DEACTIVATE,this._-J-);
      }
      
      public function _-Ek() : void
      {
         var _loc3_:* = false;
         var _loc1_:InteractionListener = null;
         if(_loc2_)
         {
            this.space = new Space(new Vec2(0,0));
            if(_loc3_ && (_loc3_))
            {
            }
            this._-LR.stiff = false;
            _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-Ck,_-B-._-IN,this.whell2Grass_ongoing);
            if(!_loc3_)
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-K,this.Car2Wall_begin);
            if(!(_loc3_ && (_loc1_)))
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-3q,this.Car2Car_begin);
            if(_loc2_)
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-Cm,_-B-._-3q,this._-GL);
            if(!(_loc3_ && (_loc1_)))
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-Cm,_-B-._-BI,this._-GL);
            if(!(_loc3_ && (_loc2_)))
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-39,_-B-._-3q,this._-Cv);
            if(!(_loc3_ && (_loc3_)))
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-BI,this.Car2Human_begin);
            if(!_loc3_)
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.SENSOR,_-B-._-Ck,_-B-._-Ge,this.whell2Water_begin);
            if(!_loc3_)
            {
               this.space.listeners.add(_loc1_);
            }
            _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-B8,this._-FG);
            if(_loc2_)
            {
               this.space.listeners.add(_loc1_);
            }
            return;
         }
         this._-LR = new PivotJoint(this.space.world,this.space.world,Vec2.get(),Vec2.get());
         if(_loc2_ || (_loc1_))
         {
            this._-LR.stiff = false;
         }
         _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-Ck,_-B-._-IN,this.whell2Grass_ongoing);
         if(!_loc3_)
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-K,this.Car2Wall_begin);
         if(!(_loc3_ && (_loc1_)))
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-3q,this.Car2Car_begin);
         if(_loc2_)
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-Cm,_-B-._-3q,this._-GL);
         if(!(_loc3_ && (_loc1_)))
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-Cm,_-B-._-BI,this._-GL);
         if(!(_loc3_ && (_loc2_)))
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.ONGOING,InteractionType.SENSOR,_-B-._-39,_-B-._-3q,this._-Cv);
         if(!(_loc3_ && (_loc3_)))
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-BI,this.Car2Human_begin);
         if(!_loc3_)
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.SENSOR,_-B-._-Ck,_-B-._-Ge,this.whell2Water_begin);
         if(!_loc3_)
         {
            this.space.listeners.add(_loc1_);
         }
         _loc1_ = new InteractionListener(CbEvent.BEGIN,InteractionType.COLLISION,_-B-._-3q,_-B-._-B8,this._-FG);
         if(_loc2_)
         {
            this.space.listeners.add(_loc1_);
         }
      }
      
      public function _-6() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            this._-K- = new _-BV();
            if(_loc2_ || (this))
            {
               this._-8d.addChild(this._-K-);
               if(_loc2_ || (this))
               {
               }
            }
            this._-FL();
         }
      }
      
      public function _-8R() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
            this._-7j.start();
            if(_loc1_ || (_loc2_))
            {
            }
            return;
         }
         this.pause = false;
      }
      
      public function else () : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            this.level = new Level1();
            if(_loc2_ || (_loc1_))
            {
               this.level.init();
               if(_loc2_ || (_loc2_))
               {
                  this.updateList.push(this.level);
               }
            }
         }
      }
      
      public function addPhysicObjects(param1:Array, param2:int = 4, param3:BodyType = null, param4:CbType = null, param5:InteractionFilter = null, param6:int = 1, param7:Boolean = true, param8:Sprite = null, param9:Material = null) : Array
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-DN(param1:_-FH, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:DisplayObjectContainer = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function addCar(param1:Number = 50, param2:Number = 110, param3:Number = 90, param4:uint = 0, param5:Vector.<Vec2> = null) : _-1A
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:_-1A = new _-1A(new _-1A._-ER[param4](),this.carLayer,null,this.space,30,100,param5);
         _loc6_.type = param4;
         if(_loc7_ || (this))
         {
            _loc6_._-H7(param3);
            if(!_loc8_)
            {
               _loc6_._-3B(param1,param2);
               if(_loc7_ || (param3))
               {
                  this.updateList.push(_loc6_);
                  if(_loc8_)
                  {
                  }
                  return _loc6_;
               }
            }
            _loc6_.skin.filters = [new DropShadowFilter(4,45,0,0.7,10,10)];
            if(_loc7_)
            {
            }
            return _loc6_;
         }
         _loc6_.update();
         return _loc6_;
      }
      
      public function addTrack(param1:Number = 50, param2:Number = 110, param3:Number = 90, param4:uint = 0, param5:_-5a = null) : _-78
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:_-78 = new _-78(new _-1A._-ER[param4](),this.carLayer,null,this.space,30,100,param5);
         _loc6_.type = param4;
         if(_loc8_)
         {
            _loc6_._-H7(param3);
            _loc6_._-3B(param1,param2);
            this.updateList.push(_loc6_);
            _loc6_.skin.filters = [new DropShadowFilter(4,45,0,0.7,10,10)];
            if(_loc8_)
            {
            }
            return _loc6_;
         }
         _loc6_._-k.skin.filters = [new DropShadowFilter(4,45,0,0.7,10,10)];
         if(!_loc7_)
         {
            _loc6_._-Bh = 100;
         }
         return _loc6_;
      }
      
      private function whell2Grass_begin(param1:InteractionCallback) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:_-5W = param1.int1.userData.owner;
         if(_loc3_ || (_loc3_))
         {
            if(_loc4_ && (param1))
            {
            }
            _loc2_.dragForceCoef = _loc2_.if ;
         }
      }
      
      private function whell2Grass_end(param1:InteractionCallback) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:_-5W = param1.int1.userData.owner;
         if(!_loc3_)
         {
            _loc2_.dragForceCoef = _loc2_.if ;
         }
      }
      
      private function whell2Grass_ongoing(param1:InteractionCallback) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:_-5W = param1.int1.userData.owner;
         var _loc3_:* = _loc2_._-5l.userData.owner;
         if(_loc4_)
         {
            if(_loc3_ == this.playerCar)
            {
               if(_loc4_ || (this))
               {
                  _loc3_.multiplyVelocity(0.94);
                  if(_loc4_)
                  {
                  }
               }
               return;
            }
            if(_loc2_._-5l.userData.owner is _-5a)
            {
               if(!(_loc5_ && (param1)))
               {
                  _loc3_.car.multiplyVelocity(0.94);
                  if(_loc5_ && (_loc2_))
                  {
                  }
               }
               return;
            }
            _loc2_._-It(0.1);
            return;
         }
         _loc2_._-It(0.1);
      }
      
      private function Car2Wall_begin(param1:InteractionCallback) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function Car2Car_begin(param1:InteractionCallback) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-8P(param1:Number = 10) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(this._-I4 + 1000 < getTimer())
            {
               if(_loc2_)
               {
                  this._-I4 = getTimer();
                  if(!_loc3_)
                  {
                     this.playerCar.hit(param1);
                  }
               }
            }
         }
      }
      
      private function _-GL(param1:InteractionCallback) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:_-1A = param1.int1.userData.owner;
         if(_loc3_)
         {
            if(_loc2_ != this.playerCar)
            {
               if(_loc3_ || (param1))
               {
               }
            }
            return;
         }
         _loc2_._-8Z();
      }
      
      private function _-Cv(param1:InteractionCallback) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_)
         {
            Cc.debugch("CarSense",param1);
         }
         var _loc2_:_-JC = param1.int1.userData.owner;
         if(!_loc3_)
         {
            _loc2_._-8Z();
         }
      }
      
      private function Car2Human_begin(param1:InteractionCallback) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function whell2Water_begin(param1:InteractionCallback) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-FG(param1:InteractionCallback) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-9P(param1:MouseEvent) : void
      {
      }
      
      public function _-Gh(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this._-n(new Vec2(this._-8d.mouseX + this.viewRec.x,this._-8d.mouseY + this.viewRec.y));
            if(_loc2_)
            {
            }
            return;
         }
         this.stage.addEventListener(MouseEvent.MOUSE_MOVE,this._-Gu);
      }
      
      public function _-3O(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            this._-8K(new Vec2(this._-8d.mouseX + this.viewRec.x,this._-8d.mouseY + this.viewRec.y));
            if(_loc3_ || (_loc3_))
            {
               this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._-Gu);
            }
         }
      }
      
      public function _-Gu(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-6e(new Vec2(this._-8d.mouseX + this.viewRec.x,this._-8d.mouseY + this.viewRec.y),true);
         }
      }
      
      public function _-n(param1:Vec2) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-8K(param1:Vec2) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-6e(param1:Vec2, param2:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-DH(param1:Event) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            this._-7j.paused = this.pause;
            if(_loc3_)
            {
               if(!this.pause)
               {
                  if(_loc3_ || (this))
                  {
                  }
               }
               return;
            }
         }
         this.update();
      }
      
      public function update() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-FL() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private var _-DD:int = 0;
      
      private var _-Jv:Boolean = false;
      
      private function _-HS() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            if(this.playerCar._-Bh <= 0)
            {
               if(_loc2_)
               {
               }
            }
            return;
         }
         this.state = _-JR;
         if(_loc2_)
         {
            TweenLite.delayedCall(3,this.gameOver);
         }
      }
      
      public var _-Em:String = "keys";
      
      public function _-Bn(param1:Event = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var _-F8:Number = 0.1;
      
      public var _-5t:Number = 0.04;
      
      public var _-FK:Number = 0.1;
      
      public function _-I5(param1:Event = null) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function changeCar(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-Cx(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            if(param1["m1"] != null)
            {
               if(_loc2_)
               {
               }
            }
            if(param1["m2"] != null)
            {
               if(_loc3_)
               {
                  param1["m2"].gotoAndPlay(0);
               }
            }
            return;
         }
         param1["m1"].gotoAndPlay(0);
         if(_loc3_)
         {
            if(param1["m2"] != null)
            {
               if(_loc3_)
               {
               }
            }
            return;
         }
         param1["m2"].gotoAndPlay(0);
      }
      
      public function _-DT(param1:Object) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(param1["m1"] != null)
            {
               if(!_loc3_)
               {
                  param1["m1"].gotoAndStop(0);
                  if(_loc2_ || (this))
                  {
                  }
                  return;
               }
            }
         }
         if(param1["m2"] != null)
         {
            if(_loc2_)
            {
               param1["m2"].gotoAndStop(0);
            }
         }
      }
      
      public var _-JB:Array;
      
      public function _-7N() : void
      {
         var _loc3_:* = false;
         var _loc1_:MovieClip = new mc_dummyParkingPoint();
         if(!_loc3_)
         {
            _loc1_.x = Math.round(this.playerCar.x);
            if(_loc2_ || (this))
            {
            }
            _loc1_.rotation = 10 * Math.round(this.playerCar.rotation / 10);
            if(!(_loc3_ && (_loc2_)))
            {
               this.bottomLayer.addChild(_loc1_);
               if(_loc2_ || (_loc2_))
               {
               }
               return;
            }
            this._-JB.push({
               "x":_loc1_.x,
               "y":_loc1_.y,
               "rotation":_loc1_.rotation,
               "type":this.playerCar.type,
               "number":this._-JB.length
            });
            return;
         }
         _loc1_.y = Math.round(this.playerCar.y);
         if(_loc2_)
         {
            _loc1_.rotation = 10 * Math.round(this.playerCar.rotation / 10);
            if(_loc3_ && (_loc2_))
            {
            }
            this._-JB.push({
               "x":_loc1_.x,
               "y":_loc1_.y,
               "rotation":_loc1_.rotation,
               "type":this.playerCar.type,
               "number":this._-JB.length
            });
            return;
         }
         this.bottomLayer.addChild(_loc1_);
         if(_loc2_ || (_loc2_))
         {
            this._-JB.push({
               "x":_loc1_.x,
               "y":_loc1_.y,
               "rotation":_loc1_.rotation,
               "type":this.playerCar.type,
               "number":this._-JB.length
            });
         }
      }
      
      public function native(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(_loc6_ && (param2))
         {
         }
         var _loc4_:* = param1 - this.viewRec.width / 2;
         if(_loc6_)
         {
         }
         var _loc5_:* = param2 - this.viewRec.height / 2;
         if(!_loc6_)
         {
            if(param3)
            {
               this.viewRec.x = _loc4_;
               if(_loc7_ || (param2))
               {
                  this.viewRec.y = _loc5_;
                  if(_loc6_ && (this))
                  {
                  }
                  this.viewRec.y = Math.min(this.viewRec.y,this._-Ed - get ._-B3);
                  if(_loc7_)
                  {
                     this.topLayer.scrollRect = this.viewRec;
                     if(_loc7_ || (param2))
                     {
                     }
                     this.bottomLayer.scrollRect = this.viewRec;
                     if(_loc7_ || (this))
                     {
                        this.carLayer.scrollRect = this.viewRec;
                     }
                     return;
                  }
                  this.middleLayer.scrollRect = this.viewRec;
                  if(!(_loc6_ && (param2)))
                  {
                     this.bottomLayer.scrollRect = this.viewRec;
                     if(_loc7_ || (this))
                     {
                        this.carLayer.scrollRect = this.viewRec;
                     }
                  }
                  return;
               }
            }
            else
            {
               this.viewRec.x = this.viewRec.x + (_loc4_ - this.viewRec.x) * 0.1;
               if(_loc7_ || (param1))
               {
                  this.viewRec.y = this.viewRec.y + (_loc5_ - this.viewRec.y) * 0.1;
                  if(_loc6_ && (param1))
                  {
                  }
                  this.carLayer.scrollRect = this.viewRec;
                  return;
               }
            }
            this.viewRec.x = Math.min(this.viewRec.x,this._-7J - get ._-Cl);
            this.viewRec.y = Math.max(this.viewRec.y,0);
            this.viewRec.y = Math.min(this.viewRec.y,this._-Ed - get ._-B3);
            if(_loc7_)
            {
               this.topLayer.scrollRect = this.viewRec;
               if(_loc7_ || (param2))
               {
               }
               this.bottomLayer.scrollRect = this.viewRec;
               if(_loc7_ || (this))
               {
                  this.carLayer.scrollRect = this.viewRec;
               }
               return;
            }
            this.middleLayer.scrollRect = this.viewRec;
            if(!(_loc6_ && (param2)))
            {
               this.bottomLayer.scrollRect = this.viewRec;
               if(_loc7_ || (this))
               {
                  this.carLayer.scrollRect = this.viewRec;
               }
            }
            return;
         }
         this.viewRec.x = Math.max(this.viewRec.x,0);
         if(!_loc6_)
         {
            this.viewRec.x = Math.min(this.viewRec.x,this._-7J - get ._-Cl);
            this.viewRec.y = Math.max(this.viewRec.y,0);
            this.viewRec.y = Math.min(this.viewRec.y,this._-Ed - get ._-B3);
            if(_loc7_)
            {
            }
            this.middleLayer.scrollRect = this.viewRec;
            if(!(_loc6_ && (param2)))
            {
               this.bottomLayer.scrollRect = this.viewRec;
               if(_loc7_ || (this))
               {
                  this.carLayer.scrollRect = this.viewRec;
               }
            }
            return;
         }
         this.topLayer.scrollRect = this.viewRec;
         if(_loc7_ || (param2))
         {
            this.middleLayer.scrollRect = this.viewRec;
            if(_loc6_ && (param2))
            {
            }
            return;
         }
         this.bottomLayer.scrollRect = this.viewRec;
         if(_loc7_ || (this))
         {
            this.carLayer.scrollRect = this.viewRec;
         }
      }
      
      public function _-CL() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this.pauseGame();
            if(_loc2_ && (this))
            {
            }
            return;
         }
         _-5B.getInstance().broadcastCommand(new break(break.SHOW_CONFIRM_WINDOW,{
            "title":"Are you sure?",
            "text":"Are you sure?\nLevel progress will be lost.",
            "btn1Function":this.exitToMenu,
            "btn2Function":this._-8z
         }));
      }
      
      public function exitToMenu(param1:* = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (this))
         {
            this._-5z();
            if(_loc2_)
            {
            }
            return;
         }
         _-5B._-72(break.GAME_EXIT,param1);
      }
      
      public function _-IH() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            this.pauseGame();
            if(_loc1_)
            {
               _-5B.getInstance().broadcastCommand(new break(break.SHOW_CONFIRM_WINDOW,{
                  "title":"Are you sure?",
                  "text":"Are you sure?\n\nLevel progress will be lost.",
                  "btn1Function":this.restart,
                  "btn2Function":this._-8z
               }));
            }
         }
      }
      
      public function _-JN() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            this.pauseGame();
            if(!(_loc2_ && (_loc1_)))
            {
               _-5B._-72(break.SHOW_NEXT_CAR_WINDOW,{"btn1Function":this._-H3});
            }
         }
      }
      
      public function _-H3() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this._-8z();
            if(_loc1_)
            {
            }
            return;
         }
         this._-Au.initMission(this._-Au._-F1 + 1);
      }
      
      public function _-EC() : void
      {
         var _loc7_:* = false;
         if(_loc6_)
         {
            this.pauseGame();
         }
         if(!(_loc7_ && (_loc1_)))
         {
            if(_loc6_ || (this))
            {
            }
         }
         var _loc1_:* = this.playerCar._-Bh;
         if(_loc7_)
         {
         }
         if(_loc6_)
         {
         }
         var _loc3_:* = 30000;
         if(_loc6_ || (_loc1_))
         {
            _-GV.userData.score = _-GV.userData.score + _loc4_;
         }
         var _loc5_:Object = new Object();
         _loc5_.time = this._-7j._-E2;
         if(!_loc7_)
         {
            _loc5_.damage = 100 - Math.ceil(_loc1_ * 100);
            _loc5_.levelScore = _loc4_;
            if(!_loc7_)
            {
               _loc5_.totalScore = _-GV.userData.score;
               if(_loc6_ || (_loc2_))
               {
                  _loc5_.level = this._-Au.levelIndex + 1;
                  if(_loc7_)
                  {
                  }
               }
            }
            this._-5z();
            return;
         }
         _-5B._-72(break.SHOW_LEVEL_COMPLETE_WINDOW,{
            "btn1Function":this._-Bm,
            "stats":_loc5_
         });
         this._-5z();
      }
      
      public function _-Bm(param1:int = -1) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function restart() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            _-5B._-72(break.GAME_RESTART,this.params);
         }
      }
      
      public function gameOver() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            this.state = _-JR;
            if(_loc2_ || (_loc1_))
            {
               this._-5z();
               if(_loc1_)
               {
               }
               return;
            }
         }
         _-5B._-72(break.GAME_OVER,this.params);
      }
      
      public function _-8O() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
            this._-5z();
            if(!_loc2_)
            {
               _-5B._-72(break.GAME_WIN,{});
            }
         }
      }
      
      public function _-J-(param1:Event = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            this.pauseGame();
            if(!_loc2_)
            {
               _-5B._-72(break.SHOW_PAUSE_WINDOW,{
                  "btn1Function":this._-8z,
                  "btn2Function":this.exitToMenu
               });
            }
         }
      }
      
      public function _-H9(param1:Event = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (param1))
         {
            _-5B._-72(break.SHOW_SCREEN,{"screenName":"help2"});
         }
      }
      
      public function _-35(param1:Event = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this.pauseGame();
            if(_loc2_)
            {
            }
            return;
         }
         _-5B._-72(break.SHOW_MAP_WINDOW,{
            "btn1Function":this._-8z,
            "btn2Function":this._-8z,
            "carPos":this.playerCar,
            "parPos":this._-Au._-Dx._-E5
         });
      }
      
      public function pauseGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc1_)))
         {
            this.pause = true;
            if(_loc2_ && (_loc2_))
            {
            }
            return;
         }
         this.stage.removeEventListener(Event.DEACTIVATE,this._-J-);
      }
      
      public function _-8z() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            this.pause = false;
            if(_loc1_ || (_loc1_))
            {
            }
            return;
         }
         this.stage.addEventListener(Event.DEACTIVATE,this._-J-);
      }
      
      public function _-Ew(param1:Event = null) : void
      {
      }
      
      public function _-Dt(param1:Event = null) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc3_))
         {
            TweenLite.delayedCall(3,this._-8O);
         }
      }
      
      public function _-D6(param1:String, param2:Number, param3:Number, param4:uint = 16777215, param5:int = 10) : _-2L
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:_-2L = new _-2L();
         _loc6_.init(this.topLayer,param2,param3,param1,param4,param5);
         if(_loc7_ || (this))
         {
            _loc6_.show();
            if(_loc7_ || (param3))
            {
               TweenLite.delayedCall(1.5,_loc6_.hide);
            }
         }
         return _loc6_;
      }
      
      public function _-BY(param1:Object = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            _-Io.save(get ._-2r,param1);
         }
      }
      
      public function _-0U(param1:Number) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            if(_loc3_ || (param1))
            {
            }
         }
         return param1;
      }
      
      public function _-46(param1:Object) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-9Q(param1,this.updateList);
         }
      }
      
      public function _-EH(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this._-9Q(param1,this.enemyList);
         }
      }
      
      public function _-G8(param1:Object) : void
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            this._-9Q(param1,this._-F4);
         }
      }
      
      public function _-9Q(param1:Object, param2:Array) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            while(_loc3_ < param2.length)
            {
               if(param1 === param2[_loc3_])
               {
                  if(!_loc4_)
                  {
                     param2.splice(_loc3_,1);
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_ || (param1))
                           {
                              _loc3_--;
                              if(_loc4_ && (param1))
                              {
                                 break;
                              }
                              break;
                           }
                        }
                        continue;
                     }
                     break;
                     if(!_loc4_)
                     {
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               _loc3_++;
               if(!(_loc4_ && (param2)))
               {
                  continue loop0;
               }
               break;
            }
            return;
         }
      }
      
      public function _-BO() : Array
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = new Array();
         for(;_loc2_ < this.updateList.length;_loc2_++,if(_loc3_)
         {
            continue;
         },break)
         {
            if(this.updateList[_loc2_] is _-1A)
            {
               if(_loc3_)
               {
                  _loc1_.push(this.updateList[_loc2_]);
                  if(_loc3_)
                  {
                     continue;
                  }
                  break;
               }
               break;
               break;
            }
         }
         return _loc1_;
      }
      
      public function _-5f() : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = undefined;
         var _loc1_:Array = this.enemyList.slice(0,this.enemyList.length);
         for each(_loc2_ in _loc1_)
         {
            if(_loc5_ || (_loc2_))
            {
               _loc2_.disassemble();
            }
         }
      }
      
      public function _-3k(param1:Number = 0, param2:Number = 0, param3:Number = 700, param4:Number = 500, param5:Number = 20) : Body
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-BS(param1:*, param2:Number, param3:Number) : void
      {
         var _loc5_:* = true;
         if(_loc5_)
         {
            _-9x._-Cg(param1,_-9x._-LU(this.viewRec.x + 350,this.viewRec.y + 300,param2,param3));
         }
      }
      
      public function _-5z() : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:_-FH = null;
         for each(_loc1_ in this.updateList)
         {
            if(!(_loc6_ && (_loc3_)))
            {
               if(!(_loc1_ is _-FH))
               {
                  continue;
               }
            }
            _loc2_ = (_loc1_ as _-FH).body.userData;
            if(_loc7_)
            {
               if(_loc2_.type != "staticCar")
               {
                  continue;
               }
            }
            _loc3_ = _loc2_.owner;
            if(_loc7_ || (_loc2_))
            {
               if(_loc2_.soundChannel != null)
               {
                  if(!(_loc6_ && (this)))
                  {
                     _loc2_.soundChannel.stop();
                     if(_loc6_)
                     {
                     }
                  }
                  _loc2_.soundChannel = null;
               }
               if(_loc3_.skin["f1"])
               {
                  if(!(_loc6_ && (this)))
                  {
                     _loc3_.skin["f1"].gotoAndStop("off");
                  }
                  _loc3_.skin["f2"].gotoAndStop("off");
                  if(!_loc6_)
                  {
                     if(_loc3_.skin["f3"])
                     {
                     }
                     if(_loc3_.skin["f4"])
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        continue;
                     }
                  }
                  _loc3_.skin["f3"].gotoAndStop("off");
                  if(_loc3_.skin["f4"])
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     continue;
                  }
               }
               if(_loc3_.skin["f2"])
               {
                  _loc3_.skin["f2"].gotoAndStop("off");
                  if(_loc6_)
                  {
                  }
                  _loc3_.skin["f3"].gotoAndStop("off");
                  if(_loc3_.skin["f4"])
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     continue;
                  }
               }
               if(_loc3_.skin["f3"])
               {
                  _loc3_.skin["f3"].gotoAndStop("off");
               }
               if(_loc3_.skin["f4"])
               {
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               else
               {
                  continue;
               }
            }
            _loc3_.skin["f4"].gotoAndStop("off");
         }
      }
      
      private function _-KO(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(param1 != 1)
            {
               if(!_loc2_)
               {
                  if(_loc2_ && (_loc2_))
                  {
                  }
               }
               if(_-FD._-B2(this.stage))
               {
                  if(_loc3_)
                  {
                     this.disassemble();
                     if(!_loc2_)
                     {
                        _-9x._-0A(MusMenu);
                        if(_loc3_ || (this))
                        {
                        }
                     }
                  }
                  _-5B._-72(break.SHOW_SCREEN,{"screenName":""});
                  if(_loc2_)
                  {
                  }
               }
            }
            return;
         }
         this.stage.addChild(new _-1O());
      }
      
      public function disassemble() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get state() : String
      {
         return this._-4f;
      }
      
      public function set state(param1:String) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc2_))
         {
            this._-4f = param1;
         }
      }
      
      public function set score(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get score() : int
      {
         return this.stats.score;
      }
      
      public function set _-6T(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            this.stats._-6T = param1;
         }
      }
      
      public function get _-6T() : int
      {
         return this.stats._-6T;
      }
      
      public function get _-5J() : int
      {
         return this.level._-5J;
      }
   }
}
