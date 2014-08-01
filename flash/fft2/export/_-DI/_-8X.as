package _-DI
{
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   
   public class _-8X extends Bitmap
   {
      
      public function _-8X(param1:Boolean = false)
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            super();
            if(_loc3_ || (param1))
            {
            }
            return;
         }
         this.empty = param1;
      }
      
      public var same:uint;
      
      public var empty:Boolean;
      
      public var _-JK:Number;
      
      public var _-CU:Number;
      
      public var bounds:Rectangle;
   }
}
