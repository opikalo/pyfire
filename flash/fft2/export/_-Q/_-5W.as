package _-Q
{
   import flash.events.EventDispatcher;
   import flash.display.Sprite;
   import nape.phys.Body;
   import nape.constraint.PivotJoint;
   import nape.constraint.AngleJoint;
   import nape.constraint.MotorJoint;
   import nape.geom.Vec2;
   import flash.events.Event;
   import game._-AB;
   import nape.space.Space;
   import fla.fx.mc_TireMark;
   
   public class _-5W extends EventDispatcher
   {
      
      public function _-5W(param1:Space, param2:Body, param3:Body, param4:Number = -1, param5:Number = 1)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var skin:Sprite;
      
      public var _-5l:Body;
      
      public var body:Body;
      
      public var _-0Q:PivotJoint;
      
      public var angle:AngleJoint;
      
      public var _-1B:MotorJoint;
      
      public var _-En:Boolean = false;
      
      public var _-7x:Boolean = false;
      
      public var maxLateralImpulse:Number = 120;
      
      public var skiddForceCoef:Number = 1;
      
      public var dragForceCoef:Number = 0.95;
      
      public var if :Number = 0.95;
      
      public function update(param1:Vec2) : void
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
      
      public var lvLength:Number = 0;
      
      public function _-2M() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      var _-7c:Sprite;
      
      var _-57:Sprite;
      
      public function _-0N(param1:Event = null) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (param1)))
         {
            if(_loc2_)
            {
            }
            this._-It(this.lvLength);
         }
      }
      
      public function _-It(param1:Number = 1) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (param1))
         {
            this._-57.addChild(this._-7c);
            if(_loc2_)
            {
            }
            this._-7c.alpha = param1;
            if(!_loc3_)
            {
               _-AB.instance._-D9.package(this._-57,this.body.position.x,this.body.position.y,0);
            }
            return;
         }
         this._-7c.rotation = this.body.rotation * 180 / Math.PI;
         if(_loc2_ || (_loc3_))
         {
            this._-7c.alpha = param1;
            if(_loc3_)
            {
            }
            return;
         }
         _-AB.instance._-D9.package(this._-57,this.body.position.x,this.body.position.y,0);
      }
      
      public function dispose() : void
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
