package _-5n
{
   import flash.geom.Point;
   import each ._-60;
   
   public class _-HJ extends Object
   {
      
      public function _-HJ(param1:Array)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               this.vertices = param1;
            }
         }
      }
      
      public static function _-1j(param1:Array) : _-HJ
      {
         var _loc5_:* = true;
         var _loc2_:Array = new Array();
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            while(_loc3_ < param1.length)
            {
               _loc2_.push(new Point(param1[_loc3_],param1[_loc3_ + 1]));
               if(_loc5_)
               {
                  if(!(_loc4_ && (_-HJ)))
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc3_ = _loc3_;
                  if(_loc5_ || (param1))
                  {
                     continue loop0;
                  }
                  break;
               }
               break;
            }
            return new _-HJ(_loc2_);
         }
      }
      
      public var vertices:Array;
      
      public function _-5G(param1:Point, param2:Number = 100) : Point
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
