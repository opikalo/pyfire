package _-Cn
{
   import flash.display.DisplayObject;
   import each ._-60;
   
   public class _-8f extends Object
   {
      
      public function _-8f(param1:DisplayObject, param2:Number, param3:Number, param4:Number)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(!(_loc5_ && (param3)))
         {
            super();
            if(!_loc5_)
            {
               this.skin = param1;
               if(!(_loc5_ && (this)))
               {
                  this.x = param2;
                  if(_loc5_)
                  {
                  }
                  this.dist = param4;
               }
            }
            this.y = param3;
            if(!(_loc5_ && (param1)))
            {
               this.dist = param4;
            }
         }
      }
      
      public var skin:DisplayObject;
      
      public var x:Number;
      
      public var y:Number;
      
      public var dist:Number;
      
      public var _-EZ:Number;
      
      public var target;
      
      private var _-JX:Boolean = false;
      
      public var alpha:Number = 0;
      
      public var _-1C:Number = 0.05;
      
      public function _-Bl(param1:Number = 0, param2:Number = 0) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function show() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc1_))
         {
            this.skin.visible = true;
         }
      }
      
      public function hide() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this.skin.visible = false;
            if(_loc1_ || (_loc2_))
            {
            }
            return;
         }
         this.skin.alpha = 0;
      }
      
      public function get isShown() : Boolean
      {
         return this._-JX;
      }
      
      public function set isShown(param1:Boolean) : void
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
