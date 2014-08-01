package _-44
{
   import _-62._-DW;
   import _-Ha.x;
   import _-Ha.y;
   import skins.humanSkins.*;
   import each ._-60;
   import flash.display.Sprite;
   import nape.phys.Body;
   import _-D3._-F;
   import flash.utils.getTimer;
   import nape.geom.Vec2;
   import _-DI._-2w;
   import _-D3._-Ee;
   import game._-AB;
   import _-Ha._-Bh;
   import each ._-AK;
   import game._-GV;
   import _-Cn._-9b;
   import _-KR._-Bj;
   import nape.space.Space;
   import flash.filters.GlowFilter;
   import flash.display.MovieClip;
   import nape.phys.BodyType;
   import nape.shape.Circle;
   import nape.phys.Material;
   import _-D2._-B-;
   import nape.shape.Polygon;
   
   public class _-JC extends Object implements _-DW
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(!(_loc2_ && (_loc1_)))
      {
         _-3N = [new humanSkinWalk1(),new humanSkinWalk2(),new humanSkinWalk3(),new humanSkinWalk4(),new humanSkinWalk5()];
         if(_loc2_)
         {
         }
         return;
      }
      if(!(_loc2_ && (_loc1_)))
      {
         _-0V = ["hit1"];
      }
      }
      
      public function _-JC(param1:Sprite = null, param2:Body = null, param3:Space = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var _-3N:Array;
      
      public static var _-4A:Array = ["dead"];
      
      public static var _-0V:Array;
      
      public static function _-E6(param1:_-DW, param2:_-DW) : Number
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-F2(param1:_-DW, param2:Array) : _-DW
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-8t(param1:_-DW, param2:Array, param3:Number = 150) : Array
      {
         var _loc9_:* = false;
         var _loc5_:_-DW = null;
         var _loc4_:Array = new Array();
         var _loc6_:uint = param2.length;
         var _loc7_:* = 0;
         while(_loc7_ < _loc6_)
         {
            _loc5_ = param2[_loc7_];
            if(!_loc9_)
            {
               if(_-60._-9s(param1._-Ha.x,param1._-Ha.y,_loc5_._-Ha.x,_loc5_._-Ha.y) <= param3)
               {
                  if(_loc9_ && (_-JC))
                  {
                     continue;
                  }
               }
               _loc7_++;
               continue;
            }
            _loc4_.push(_loc5_);
            if(!(_loc9_ && (param2)))
            {
               _loc7_++;
            }
         }
         return _loc4_;
      }
      
      private var _-4f:String = "";
      
      public var _-87:Number = 10;
      
      public var _-6p:Number = 5;
      
      public var _-20:Number = 45;
      
      public var _-1K:Number = 1000;
      
      public var cash:int = 5;
      
      public var _-IB:Number = 4;
      
      public var _-4q:Number = 0;
      
      public var _-Ec:Number = 100;
      
      private var _-96:Number = 100;
      
      public var set :Number = 8;
      
      public var skin:Sprite;
      
      public var body:Body;
      
      public var _-5e:Body;
      
      public var _-6D:_-F;
      
      public var _-AD:uint;
      
      public function update(param1:Number = 0, param2:Number = 0) : void
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-8Z() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc2_)))
         {
            if(this._-4f != "stand")
            {
               if(_loc2_ || (_loc1_))
               {
                  this._-6D._-Eq(new _-Ee(this._-JA,[2]));
                  if(_loc1_ && (_loc2_))
                  {
                  }
               }
            }
            else if(this.wait4time - getTimer() < 1000)
            {
               if(_loc2_)
               {
               }
            }
            
            return;
         }
         this.wait4time = getTimer() + 1000;
      }
      
      public function _-8q(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-Ih(param1:*) : Boolean
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            this._-8q(param1.x,param1.y);
         }
         return false;
      }
      
      public function _-51(param1:*) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var currentTarget:_-DW;
      
      private var _-4O:int;
      
      public function _-K5() : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private var _-8h:int;
      
      public function _-03(param1:*) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(getTimer() >= this._-8h + this._-1K)
            {
               if(_loc3_)
               {
                  param1.hit(this._-6p);
                  if(_loc3_ || (param1))
                  {
                  }
                  this.state = "attack";
               }
            }
            return;
         }
         this._-8h = getTimer();
         if(!(_loc2_ && (_loc3_)))
         {
            this.state = "attack";
         }
      }
      
      public function _-Ao(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-65(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-A7(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
      
      public function _-5i() : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-49(param1:Number, param2:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function hit(param1:Number, param2:_-DW = null) : void
      {
         var _loc5_:* = false;
         if(_loc4_ || (_loc3_))
         {
            if(_loc5_)
            {
            }
            this._-Bh = this._-Bh;
            if(this._-Bh <= 0)
            {
               if(_loc4_ || (param1))
               {
                  this._-Bh = 0;
                  if(_loc4_ || (param2))
                  {
                  }
               }
               else
               {
                  this._-6D._-Eq(new _-Ee(this._-JA,[0.3]));
                  if(_loc5_)
                  {
                  }
               }
               if(!_loc5_)
               {
                  _loc3_.x = this.x;
                  if(!_loc5_)
                  {
                     _loc3_.y = this.y;
                     if(_loc4_ || (this))
                     {
                     }
                     _-AB.instance.middleLayer.addChild(_loc3_.skin);
                  }
                  return;
               }
               if(_loc5_ && (this))
               {
               }
               _loc3_.rotation = _-60._-LW(param2._-Ha.x,param2._-Ha.y,this.x,this.y);
               if(_loc4_)
               {
                  _-AB.instance.middleLayer.addChild(_loc3_.skin);
               }
               return;
            }
            if(this.state != "freeze")
            {
               if(!(_loc5_ && (param1)))
               {
                  this.state = _-0V[_-AK._-2U(0,1,true)];
                  if(_loc4_)
                  {
                     this._-6D._-Eq(new _-Ee(this._-JA,[0.3]));
                     if(_loc5_)
                     {
                     }
                  }
               }
               if(!_loc5_)
               {
                  _loc3_.x = this.x;
                  if(!_loc5_)
                  {
                     _loc3_.y = this.y;
                     if(_loc4_ || (this))
                     {
                     }
                     _-AB.instance.middleLayer.addChild(_loc3_.skin);
                  }
                  return;
               }
               if(_loc5_ && (this))
               {
               }
               _loc3_.rotation = _-60._-LW(param2._-Ha.x,param2._-Ha.y,this.x,this.y);
               if(_loc4_)
               {
                  _-AB.instance.middleLayer.addChild(_loc3_.skin);
               }
               return;
            }
            if(param2 != null)
            {
               if(!_loc5_)
               {
                  _loc3_.x = this.x;
                  if(!_loc5_)
                  {
                     _loc3_.y = this.y;
                     if(_loc4_ || (this))
                     {
                     }
                     _-AB.instance.middleLayer.addChild(_loc3_.skin);
                  }
               }
               if(_loc5_ && (this))
               {
               }
               _loc3_.rotation = _-60._-LW(param2._-Ha.x,param2._-Ha.y,this.x,this.y);
               if(_loc4_)
               {
                  _-AB.instance.middleLayer.addChild(_loc3_.skin);
               }
            }
            return;
         }
         this._-5i();
         if(_loc4_)
         {
         }
         if(param2 != null)
         {
            if(!_loc5_)
            {
               _loc3_.x = this.x;
               if(!_loc5_)
               {
                  _loc3_.y = this.y;
                  if(_loc4_ || (this))
                  {
                  }
                  _-AB.instance.middleLayer.addChild(_loc3_.skin);
               }
            }
            if(_loc5_ && (this))
            {
            }
            _loc3_.rotation = _-60._-LW(param2._-Ha.x,param2._-Ha.y,this.x,this.y);
            if(_loc4_)
            {
               _-AB.instance.middleLayer.addChild(_loc3_.skin);
            }
         }
      }
      
      public function _-C-(param1:Number) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(_loc3_)
            {
            }
            this._-Bh = this._-Bh;
            if(!(_loc2_ && (_loc2_)))
            {
               if(this._-Bh >= this._-Ec)
               {
                  if(_loc3_ || (this))
                  {
                  }
               }
               return;
            }
         }
         this._-Bh = this._-Ec;
      }
      
      public function freeze(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (this))
         {
            this._-AD = getTimer() + param1 * 1000;
            if(_loc2_ || (_loc3_))
            {
               this.state = "freeze";
            }
         }
      }
      
      public var _-JQ:_-Bj;
      
      public function do () : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (_loc1_))
         {
            this._-8q(this._-JQ.x,this._-JQ.y);
         }
         var _loc1_:Number = Math.abs(this.body.position.sub(new Vec2(this._-JQ.x,this._-JQ.y)).length);
         if(!(_loc3_ && (_loc3_)))
         {
            if(_loc1_ < 5)
            {
               if(_loc2_ || (this))
               {
                  if(this._-JQ._-0o.length > 0)
                  {
                     if(_loc2_ || (this))
                     {
                     }
                  }
                  else
                  {
                     this.disassemble();
                  }
               }
               this._-JQ = this._-JQ._-0o[_-AK._-2U(0,this._-JQ._-0o.length - 1,true)];
               if(_loc3_)
               {
               }
            }
         }
         return false;
      }
      
      public var isDisassembled:Boolean;
      
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
         if(!_loc3_)
         {
            if(!_loc3_)
            {
               if(!(_loc3_ && (this)))
               {
                  if(_loc2_ || (param1))
                  {
                  }
                  if(!(this._-4f == param1))
                  {
                     if(_loc3_ && (_loc3_))
                     {
                     }
                     this._-4f = param1;
                  }
                  return;
               }
               if(!(_loc3_ && (this)))
               {
                  if(_loc2_)
                  {
                  }
                  if(_loc2_)
                  {
                     return;
                  }
                  return;
               }
               this._-4f == param1;
               if(_loc2_)
               {
               }
               if(_loc2_)
               {
                  return;
               }
               return;
            }
            if(this._-4f.search("dead") == -1)
            {
               if(_loc3_ && (_loc3_))
               {
               }
               this._-4f = param1;
            }
            return;
         }
         (this.skin as _-2w).play(0,param1);
         if(!_loc3_)
         {
            this._-4f = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.body.position.x;
      }
      
      public function get y() : Number
      {
         return this.body.position.y;
      }
      
      public function get rotation() : Number
      {
         return _-60._-0U(this.body.rotation);
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (param1))
         {
            this.body.rotation = _-60._-Ik(param1);
         }
      }
      
      public function get _-Bh() : Number
      {
         return this._-96;
      }
      
      public function set _-Bh(param1:Number) : void
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            this._-96 = param1;
         }
      }
   }
}
