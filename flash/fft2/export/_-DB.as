package
{
   public class _-DB extends Object
   {
      
      public function _-DB()
      {
      }
      
      public static function continue(param1:int, param2:Object = undefined) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:uint = param1;
         var _loc4_:String = _loc3_.toString(16);
         _loc4_ = _loc4_.toUpperCase();
         if(_loc5_)
         {
            if(param2 != null)
            {
            }
            return _loc4_;
         }
         while(_loc4_.length < param2)
         {
            if(_loc5_)
            {
            }
            _loc4_ = "0";
         }
         return _loc4_;
      }
   }
}
