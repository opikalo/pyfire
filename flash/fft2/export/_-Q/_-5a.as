package _-Q
{
   import flash.display.Sprite;
   import nape.phys.Body;
   import nape.geom.Vec2;
   import nape.constraint.PivotJoint;
   import nape.constraint.AngleJoint;
   import nape.phys.Compound;
   import _-D2._-9J;
   import _-D2._-B-;
   import fla.carSkins.*;
   import nape.phys.BodyType;
   import nape.shape.Polygon;
   import nape.phys.Material;
   import each ._-60;
   import nape.space.Space;
   
   public class _-5a extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(!(_loc1_ && (_loc1_)))
      {
         _-ER = [skin_FireTrailar04,skin_FireTrailar05];
      }
      }
      
      public function _-5a(param1:Sprite = null, param2:Sprite = null, param3:Body = null, param4:Space = null, param5:Vector.<Vec2> = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var _-ER;
      
      private var _-55:Sprite;
      
      private var _-o:Body;
      
      public var _-6O:Vector.<Vec2>;
      
      private var _-0L:Vector.<_-5W>;
      
      private var wheelSkins:Array;
      
      private var _-8I:Array;
      
      public var _-0Q:PivotJoint;
      
      public var angle:AngleJoint;
      
      public var _-4q:Number = 0;
      
      private var _-6L:Boolean = false;
      
      private var _-3g:Boolean = false;
      
      public var car:_-1A;
      
      public var compound:Compound;
      
      public function _-V() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            this.body = _-9J._-64("6.95 -9.3 15.35 -9.3 15.35 60.5 -15.65 60.5 -15.65 -9.1 -6.85 -9.1 -6.85 -27.1 6.95 -27.1".split(" "),_-B-._-BD,_-B-._-6n);
         }
      }
      
      public function update(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc4_:* = false;
         if(!_loc4_)
         {
            this._-u(this._-4q);
            if(!(_loc4_ && (_loc3_)))
            {
               this._-55.x = this._-o.position.x - param1;
               if(_loc3_)
               {
                  this._-55.y = this._-o.position.y - param2;
                  if(_loc3_)
                  {
                  }
               }
            }
            return;
         }
         this._-55.rotation = this._-0U(this._-o.rotation);
      }
      
      public function _-DP() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-u(param1:Number) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < this._-0L.length)
         {
            this._-0L[_loc2_].update(new Vec2(0,-param1));
            if(!_loc4_)
            {
               this._-0L[_loc2_].skin.rotation = this._-0U(this._-0L[_loc2_].body.rotation - this._-o.rotation);
               if(!(_loc4_ && (param1)))
               {
                  _loc2_++;
                  if(_loc3_ || (this))
                  {
                     continue;
                  }
                  break;
               }
            }
         }
      }
      
      public function _-3B(param1:Number, param2:Number) : void
      {
         var _loc4_:* = true;
         if(_loc4_)
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
      
      public function throw(param1:_-1A, param2:Number = -1, param3:Number = 1) : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get skin() : Sprite
      {
         return this._-55;
      }
      
      public function set skin(param1:Sprite) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
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
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-o = param1;
         }
      }
      
      public function set _-C(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function set _-LH(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function set _-Bh(param1:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
   }
}
