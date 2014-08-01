package Playtomic
{
   public final class _-8j extends Object
   {
      
      public function _-8j()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            super();
         }
      }
      
      private static var _-KZ:String;
      
      private static var _-L8:String;
      
      static function _-4w(param1:String) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            if(_loc3_ && (_loc3_))
            {
            }
            _-KZ = _-C9._-7G("geoip-");
            if(_loc3_)
            {
            }
            return;
         }
         if(_loc2_)
         {
         }
         _-L8 = _-C9._-7G("geoip-lookup-");
      }
      
      public static function _-9c(param1:Function) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            _-El._-2Z(_-KZ,_-L8,_-J6,param1);
         }
      }
      
      private static function _-J6(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(_loc6_ || (param2))
               {
                  return;
               }
            }
         }
         var _loc5_:Object = {
            "Code":"N/A",
            "Name":"UNKNOWN"
         };
         if(_loc6_ || (_-8j))
         {
            if(param4._-B4)
            {
               if(_loc6_ || (param2))
               {
                  _loc5_["Code"] = param3["location"]["code"];
                  if(_loc6_)
                  {
                     _loc5_["Name"] = param3["location"]["name"];
                     if(_loc7_)
                     {
                     }
                  }
               }
            }
            param1(_loc5_,param4);
         }
      }
   }
}
