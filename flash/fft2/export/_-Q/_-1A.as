package _-Q
{
   import _-62._-DW;
   import flash.display.Sprite;
   import nape.phys.Body;
   import nape.phys.Compound;
   import nape.geom.Vec2;
   import _-D3._-F;
   import fla.carSkins.*;
   import skins.carSkins.*;
   import _-D3._-Ee;
   import flash.utils.getTimer;
   import each ._-60;
   import game._-AB;
   import _-5n._-HJ;
   import flash.geom.Point;
   import _-KR._-Bj;
   import each ._-AK;
   import nape.geom.RayResult;
   import nape.geom.Ray;
   import _-D2._-B-;
   import skins.wheelSkins.wheel1;
   import nape.phys.BodyType;
   import nape.shape.Polygon;
   import flash.display.MovieClip;
   import fla.fx.mc_Vzliv01;
   import fla.fx.SparkAnim;
   import nape.space.Space;
   import flash.geom.Rectangle;
   import _-D2._-9J;
   
   public class _-1A extends Object implements _-DW
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(!(_loc1_ && (_-1A)))
      {
         _-ER = [skin_FireCar01,skin_FireCar02,skin_FireCar03,skin_FireCar04,skin_FireCar05,carSkin1,carSkin2,carSkin3,carSkin4,carSkin5,carSkin6,carSkin7,carSkin8];
      }
      }
      
      public function _-1A(param1:Sprite = null, param2:Sprite = null, param3:Body = null, param4:Space = null, param5:Number = 30, param6:Number = 100, param7:Vector.<Vec2> = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var _-ER:Array;
      
      private var _-4f:String;
      
      public var type:Number = 0;
      
      public var _-6p:Number = 100;
      
      public var _-IB:Number = 0;
      
      public var _-FT:Number = 1;
      
      public var  set:Number;
      
      public var _-9d:Number = 1.7976931348623157E308;
      
      public var _-Ec:Number = 100;
      
      private var _-96:Number = 100;
      
      public var _-7o:Number = 0;
      
      public var _-5g:Number = 50;
      
      public var _-4q:Number = 0;
      
      public var data:Object;
      
      public var _-6A:Number = 1;
      
      private var _-55:Sprite;
      
      private var _-Ce:Number = 0;
      
      private var _-6X:Number = 0;
      
      private var _-CZ:Number = 0;
      
      private var _-I6:Sprite;
      
      private var _-o:Body;
      
      private var _-5A:Number = 0;
      
      private var _-3H:Number = -1;
      
      private var _-Ci:Number = -1;
      
      private var _-Af:Number = -1;
      
      public var compound:Compound;
      
      public var _-6O:Vector.<Vec2>;
      
      public var _-0L:Vector.<_-5W>;
      
      private var wheelSkins:Array;
      
      private var _-8I:Array;
      
      public var _-5e:Body;
      
      public var _-6D:_-F;
      
      private var _-B7:Boolean = false;
      
      private var _-8d:Sprite = null;
      
      public function update(param1:Number = 0, param2:Number = 0) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-KV() : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-6t() : Vec2
      {
         var _loc1_:Vec2 = this.body.localToWorld(new Vec2(1,0)).sub(this.body.position);
         return new Vec2(this.body.velocity.dot(_loc1_),0);
      }
      
      public function _-u(param1:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-1N(param1:Array) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-8Z() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            if(this._-4f != "stand")
            {
               if(_loc1_)
               {
                  this._-6D._-Eq(new _-Ee(this._-JA,[0.1]));
                  if(_loc1_)
                  {
                  }
               }
            }
            else if(this.wait4time - getTimer() < 50)
            {
               if(!(_loc2_ && (this)))
               {
                  this.wait4time = getTimer() + 50;
               }
            }
            
         }
      }
      
      public function _-6U(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-8q(param1:Number, param2:Number, param3:Number = 0) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-Ao(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(_loc4_ && (this)))
         {
            if(_loc4_ && (param2))
            {
            }
            this.body.rotation = _-60._-Ik(_-60._-LW(this.body.position.x,this.body.position.y,param1,param2));
         }
         return true;
      }
      
      public function _-1H(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-If(param1:_-HJ) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var _-JQ:_-Bj;
      
      public function do () : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-7H(param1:Number = 0, param2:Number = 0) : Boolean
      {
         var _loc6_:* = true;
         var _loc3_:RayResult = null;
         if(_loc5_ && (param2))
         {
         }
         if(_loc4_.c != null)
         {
            _loc3_ = _loc4_.c as RayResult;
            if(_loc6_ || (param1))
            {
               if(_loc3_.distance < 60)
               {
                  if(!(_loc5_ && (this)))
                  {
                     this._-6D._-Eq(new _-Ee(this._-FQ,[param1,param2]));
                     if(_loc6_)
                     {
                     }
                  }
                  return true;
               }
            }
         }
         return false;
      }
      
      public function _-FQ(param1:Number = 0, param2:Number = 0) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private var _-AV:Number = 0;
      
      public function _-6r(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private var wait4time:int = 0;
      
      public function _-JA(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function removeFromWorld() : Boolean
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            this.state = "dead";
            if(_loc2_)
            {
               this._-6D.clear();
               if(!_loc1_)
               {
                  _-AB.instance._-46(this);
                  if(_loc2_ || (_loc1_))
                  {
                  }
               }
            }
            return true;
         }
         this.disassemble();
         return true;
      }
      
      private var _-DC:Ray;
      
      private var null:Ray;
      
      private var _-HT:Ray;
      
      private var _-9h:Ray;
      
      private var _-5P:Ray;
      
      private function _-21(param1:Number = 0) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._-DC = new Ray(this.body.worldCOM,Vec2.fromPolar(1,this.body.rotation));
         if(_loc3_)
         {
            this._-DC.maxDistance = 300;
            if(_loc3_)
            {
            }
            this.null = new Ray(this.body.worldCOM,Vec2.fromPolar(1,param1));
            if(_loc3_ || (this))
            {
               this.null.maxDistance = 300;
               if(_loc3_ || (_loc3_))
               {
                  if(_loc2_ && (_loc3_))
                  {
                  }
                  this._-HT = new Ray(this.body.worldCOM,Vec2.fromPolar(1,param1));
                  this._-HT.maxDistance = 300;
                  if(!(_loc2_ && (this)))
                  {
                     if(_loc3_)
                     {
                     }
                     this._-9h = new Ray(this.body.worldCOM,Vec2.fromPolar(1,param1));
                  }
               }
               this._-9h.maxDistance = 300;
               if(_loc2_ && (this))
               {
               }
            }
            if(_loc3_)
            {
            }
            this._-5P = new Ray(this.body.worldCOM,Vec2.fromPolar(1,param1));
         }
         this._-5P.maxDistance = 300;
      }
      
      private function _-3R(param1:Number = 0) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-DP(param1:Vector.<Vec2> = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-3B(param1:Number, param2:Number) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!_loc3_)
         {
            this.compound.translate(new Vec2(param1,param2));
         }
      }
      
      public function _-H7(param1:Number) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this.compound.rotate(new Vec2(this.x,this.y),_-60._-Ik(param1));
         }
      }
      
      public function multiplyVelocity(param1:Number) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:_-5W = null;
         if(_loc4_ || (_loc2_))
         {
            this._-o.velocity.mul(param1);
         }
         var _loc3_:* = 0;
         while(_loc3_ < 4)
         {
            _loc2_ = this._-0L[_loc3_];
            if(_loc4_ || (param1))
            {
               _loc2_.body.velocity = _loc2_.body.velocity.mul(param1);
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc3_++;
         }
      }
      
      public function hit(param1:Number, param2:_-DW = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-5i() : void
      {
         var _loc4_:* = true;
         var _loc1_:MovieClip = null;
         _loc1_ = new mc_Vzliv01();
         if(_loc4_ || (this))
         {
            _loc1_.x = this.x - 60;
            if(_loc4_)
            {
               _loc1_.y = this.y - 64;
               if(_loc4_)
               {
               }
               _loc1_ = new SparkAnim();
               if(!_loc3_)
               {
                  _loc1_.scaleX = _loc1_.scaleY = 0.5 + Math.random() * 0.5;
                  if(_loc4_ || (_loc2_))
                  {
                  }
                  _-AB.instance.topLayer.addChild(_loc1_);
                  return;
               }
               _loc1_.rotation = Math.random() * 360;
               if(!(_loc3_ && (_loc3_)))
               {
                  _loc1_.x = this.x;
                  if(_loc4_ || (this))
                  {
                     _loc1_.y = this.y;
                     if(_loc4_)
                     {
                        _-AB.instance.topLayer.addChild(_loc1_);
                     }
                  }
               }
               return;
            }
         }
         _-AB.instance.topLayer.addChild(_loc1_);
         _loc1_ = new SparkAnim();
         if(!_loc3_)
         {
            _loc1_.scaleX = _loc1_.scaleY = 0.5 + Math.random() * 0.5;
            if(_loc4_ || (_loc2_))
            {
            }
            _-AB.instance.topLayer.addChild(_loc1_);
            return;
         }
         _loc1_.rotation = Math.random() * 360;
         if(!(_loc3_ && (_loc3_)))
         {
            _loc1_.x = this.x;
            if(_loc4_ || (this))
            {
               _loc1_.y = this.y;
               if(_loc4_)
               {
                  _-AB.instance.topLayer.addChild(_loc1_);
               }
            }
         }
      }
      
      public function disassemble() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get skin() : Sprite
      {
         return this._-55;
      }
      
      public function set skin(param1:Sprite) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            this._-55 = param1;
         }
      }
      
      public function get body() : Body
      {
         return this._-o;
      }
      
      public function set body(param1:Body) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (param1))
         {
            this._-o = param1;
         }
      }
      
      public function get _-79() : Number
      {
         return this._-5A;
      }
      
      public function set _-79(param1:Number) : void
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            this._-5A = param1;
         }
      }
      
      public function get space() : Space
      {
         return this._-o.space;
      }
      
      public function set space(param1:Space) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:_-5W = null;
         if(_loc6_ || (_loc3_))
         {
            this._-o.space = param1;
         }
         for each(_loc2_ in this._-0L)
         {
            if(_loc6_ || (param1))
            {
               _loc2_.body.space = param1;
            }
         }
      }
      
      public function get _-L6() : Number
      {
         return this._-o.velocity.length;
      }
      
      public function get _-2t() : Boolean
      {
         return this._-B7;
      }
      
      public function set _-2t(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private var _-3g:Boolean;
      
      public function set _-C(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private var _-6L:Boolean;
      
      public function set _-LH(param1:Boolean) : void
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
         if(!_loc3_)
         {
            if(this._-4f != param1)
            {
               if(_loc2_)
               {
               }
            }
            return;
         }
         this._-4f = param1;
      }
      
      public function get x() : Number
      {
         return this._-o.position.x;
      }
      
      public function get y() : Number
      {
         return this._-o.position.y;
      }
      
      public function get rotation() : Number
      {
         return _-60._-0U(this.body.rotation);
      }
      
      public function get position() : Vec2
      {
         return this._-o.position;
      }
      
      public function get _-Bh() : Number
      {
         return this._-96;
      }
      
      public function set _-Bh(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (param1))
         {
            this._-96 = param1;
         }
      }
      
      public function _-0U(param1:Number) : Number
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-Ik(param1:Number) : Number
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(_loc2_ || (_loc2_))
            {
            }
         }
         return param1;
      }
      
      public function _-7Z(param1:Number = -1, param2:Number = -1, param3:Number = -1) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
