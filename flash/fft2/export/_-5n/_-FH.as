package _-5n
{
   import nape.dynamics.ContactList;
   import nape.callbacks.InteractionCallback;
   import nape.dynamics.Arbiter;
   import flash.display.DisplayObject;
   import nape.phys.Body;
   import each ._-60;
   import game._-AB;
   import nape.dynamics.InteractionFilter;
   import nape.phys.Material;
   import _-D2._-9J;
   import nape.geom.Vec2;
   
   public class _-FH extends Object
   {
      
      public function _-FH(param1:DisplayObject, param2:Body = null, param3:uint = 4, param4:InteractionFilter = null, param5:Material = null)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!_loc7_)
         {
            super();
            if(!(_loc7_ && (param2)))
            {
               this.skin = param1;
               if(_loc7_ && (param1))
               {
               }
               param2 = _-9J._-2n(param1,0,new Vec2(param3,param3),param4,param5);
               this.body = param2;
               if(!(_loc7_ && (param2)))
               {
                  param2.userData.owner = this;
               }
               return;
            }
         }
         if(param2 == null)
         {
            if(!_loc7_)
            {
               param2 = _-9J._-2n(param1,0,new Vec2(param3,param3),param4,param5);
            }
            param2.userData.owner = this;
            return;
         }
         this.body = param2;
         if(!(_loc7_ && (param2)))
         {
            param2.userData.owner = this;
         }
      }
      
      public static function _-86(param1:InteractionCallback) : ContactList
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Arbiter = null;
         while(_loc2_ < param1.arbiters.length)
         {
            _loc3_ = param1.arbiters.at(_loc2_);
            if(_loc5_)
            {
               if(_loc3_.isCollisionArbiter())
               {
                  if(_loc5_)
                  {
                     return _loc3_.collisionArbiter.contacts;
                  }
               }
               else
               {
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public var skin:DisplayObject;
      
      public var body:Body;
      
      public var dragForceCoef:Number = 0.95;
      
      public function update(param1:Number = 0, param2:Number = 0) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-FA(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc4_:* = false;
         if(!(_loc4_ && (param1)))
         {
            this.skin.x = this.body.position.x - param1;
            if(_loc3_ || (_loc3_))
            {
            }
            return;
         }
         this.skin.y = this.body.position.y - param2;
         if(!(_loc4_ && (_loc3_)))
         {
            this.skin.rotation = this.body.rotation * 180 / Math.PI;
         }
      }
      
      public function get x() : Number
      {
         return this.body.position.x;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            this.body.position.x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.body.position.y;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            this.body.position.y = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return _-60._-0U(this.body.rotation);
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this.body.rotation = _-60._-Ik(param1);
         }
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
   }
}
