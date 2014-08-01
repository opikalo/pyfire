package each 
{
   import flash.net.SharedObject;
   
   public class _-Io extends Object
   {
      
      public function _-Io()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function dynamic(param1:String) : SharedObject
      {
         var _loc2_:SharedObject = SharedObject.getLocal(param1);
         return _loc2_;
      }
      
      public static function _-8T(param1:String, param2:String = "params") : Object
      {
         var _loc3_:SharedObject = SharedObject.getLocal(param1);
         return _loc3_.data[param2];
      }
      
      public static function save(param1:String, param2:Object, param3:String = "params") : SharedObject
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:SharedObject = SharedObject.getLocal(param1);
         _loc4_.data[param3] = param2;
         if(!_loc6_)
         {
            _loc4_.flush();
         }
         return _loc4_;
      }
   }
}
