package Playtomic
{
   public final class _-7K extends Object
   {
      
      public function _-7K()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static var _-KZ:String;
      
      private static var false:String;
      
      private static var _-Jy:String;
      
      private static var _-88:String;
      
      private static var _-2p:String;
      
      private static var _-7C:String;
      
      private static var _-2O:String;
      
      private static var _-KA:String;
      
      static function _-4w(param1:String) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(_loc2_)
            {
            }
            _-KZ = _-C9._-7G("data-");
         }
         if(_loc2_)
         {
         }
         false = _-C9._-7G("data-views-");
         if(!_loc3_)
         {
            if(_loc2_)
            {
            }
            _-Jy = _-C9._-7G("data-plays-");
            if(!(_loc3_ && (_loc2_)))
            {
               if(_loc3_)
               {
               }
               _-88 = _-C9._-7G("data-playtime-");
            }
            return;
         }
         if(_loc3_)
         {
         }
         _-2p = _-C9._-7G("data-custommetric-");
         if(!_loc3_)
         {
            if(_loc2_)
            {
            }
            _-7C = _-C9._-7G("data-levelcountermetric-");
            if(!_loc3_)
            {
               if(_loc2_ || (_-7K))
               {
               }
               _-2O = _-C9._-7G("data-levelrangedmetric-");
               if(_loc3_ && (_loc3_))
               {
               }
            }
            return;
         }
         if(_loc3_)
         {
         }
         _-KA = _-C9._-7G("data-levelaveragemetric-");
      }
      
      public static function Views(param1:Function, param2:Object = null) : void
      {
         var _loc4_:* = false;
         if(!(_loc4_ && (_loc3_)))
         {
            _-58(false,"Views",param1,param2);
         }
      }
      
      public static function Plays(param1:Function, param2:Object = null) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (_-7K)))
         {
            _-58(_-Jy,"Plays",param1,param2);
         }
      }
      
      public static function _-Eh(param1:Function, param2:Object = null) : void
      {
         var _loc4_:* = false;
         if(_loc3_)
         {
            _-58(_-88,"Playtime",param1,param2);
         }
      }
      
      private static function _-58(param1:String, param2:String, param3:Function, param4:Object) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!(_loc7_ && (param3)))
         {
            if(param4 == null)
            {
            }
            _loc5_ = new Object();
            _loc5_["type"] = param2;
            if(_loc6_)
            {
               _loc5_["day"] = param4.hasOwnProperty("day")?param4["day"]:0;
               if(_loc6_)
               {
                  _loc5_["month"] = param4.hasOwnProperty("month")?param4["month"]:0;
                  if(_loc7_ && (param2))
                  {
                  }
                  return;
               }
               _-El._-2Z(_-KZ,param1,_-Hd,param3,_loc5_);
               return;
            }
            _loc5_["year"] = param4.hasOwnProperty("year")?param4["year"]:0;
            if(_loc6_ || (param2))
            {
               _-El._-2Z(_-KZ,param1,_-Hd,param3,_loc5_);
            }
            return;
         }
         var _loc5_:Object = new Object();
         _loc5_["type"] = param2;
         if(_loc6_)
         {
            _loc5_["day"] = param4.hasOwnProperty("day")?param4["day"]:0;
            if(_loc6_)
            {
               _loc5_["month"] = param4.hasOwnProperty("month")?param4["month"]:0;
               if(_loc7_ && (param2))
               {
               }
               return;
            }
            _-El._-2Z(_-KZ,param1,_-Hd,param3,_loc5_);
            return;
         }
         _loc5_["year"] = param4.hasOwnProperty("year")?param4["year"]:0;
         if(_loc6_ || (param2))
         {
            _-El._-2Z(_-KZ,param1,_-Hd,param3,_loc5_);
         }
      }
      
      private static function _-Hd(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
               }
            }
            if(!(_loc6_ && (param3)))
            {
               if(param4._-B4 == 1)
               {
                  _loc5_["Name"] = param2["type"];
                  _loc5_["Day"] = param2["day"];
                  if(!_loc6_)
                  {
                     _loc5_["Month"] = param2["month"];
                     _loc5_["Year"] = param2["year"];
                     if(_loc6_)
                     {
                     }
                  }
                  return;
               }
               param1(_loc5_,param4);
               return;
            }
            _loc5_["Value"] = int(param3["value"]);
            if(!_loc6_)
            {
               param1(_loc5_,param4);
            }
            return;
         }
      }
      
      public static function CustomMetric(param1:String, param2:Function, param3:Object = null) : void
      {
         var _loc6_:* = false;
         if(!_loc6_)
         {
            if(param3 == null)
            {
            }
            new Object()["metric"] = param1;
            if(!_loc6_)
            {
               _loc4_["day"] = param3.hasOwnProperty("day")?param3["day"]:0;
               if(_loc5_ || (_-7K))
               {
                  _loc4_["month"] = param3.hasOwnProperty("month")?param3["month"]:0;
                  if(_loc6_)
                  {
                  }
               }
               return;
            }
            _loc4_["year"] = param3.hasOwnProperty("year")?param3["year"]:0;
            if(_loc5_ || (param3))
            {
               _-El._-2Z(_-KZ,_-2p,_-AQ,param2,_loc4_);
            }
            return;
         }
         var param3:Object = new Object();
         new Object()["metric"] = param1;
         if(!_loc6_)
         {
            _loc4_["day"] = param3.hasOwnProperty("day")?param3["day"]:0;
            if(_loc5_ || (_-7K))
            {
               _loc4_["month"] = param3.hasOwnProperty("month")?param3["month"]:0;
               if(_loc6_)
               {
               }
            }
            return;
         }
         _loc4_["year"] = param3.hasOwnProperty("year")?param3["year"]:0;
         if(_loc5_ || (param3))
         {
            _-El._-2Z(_-KZ,_-2p,_-AQ,param2,_loc4_);
         }
      }
      
      private static function _-AQ(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc7_:* = true;
         if(!(_loc6_ && (param2)))
         {
            if(param1 == null)
            {
               if(_loc7_)
               {
               }
            }
            if(_loc7_)
            {
               if(param4._-B4)
               {
                  if(_loc7_ || (param3))
                  {
                     _loc5_["Name"] = "CustomMetric";
                     _loc5_["Metric"] = param2["metric"];
                     if(!_loc6_)
                     {
                        _loc5_["Day"] = param2["day"];
                        _loc5_["Month"] = param2["month"];
                     }
                     _loc5_["Year"] = param2["year"];
                     if(_loc6_ && (_-7K))
                     {
                     }
                  }
                  _loc5_["Value"] = int(param3["value"]);
                  if(_loc6_)
                  {
                  }
               }
               param1(_loc5_,param4);
            }
            return;
         }
      }
      
      public static function _-81(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(_loc6_)
         {
            _-8L(_-7C,param1,param2,_-Ae,param3,param4);
         }
      }
      
      private static function _-Ae(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!_loc7_)
         {
            if(param1 == null)
            {
               if(!(_loc7_ && (param1)))
               {
                  return;
               }
            }
         }
         var _loc5_:Object = new Object();
         if(_loc6_)
         {
            if(param4._-B4)
            {
            }
            param1(_loc5_,param4);
            return;
         }
         _loc5_["Name"] = "LevelAverageMetric";
         if(_loc6_)
         {
            _loc5_["Metric"] = param2["metric"];
            if(_loc7_ && (param2))
            {
            }
            param1(_loc5_,param4);
            return;
         }
         _loc5_["Level"] = param2["level"];
         if(!(_loc7_ && (param1)))
         {
            _loc5_["Day"] = param2["day"];
            _loc5_["Month"] = param2["month"];
            _loc5_["Year"] = param2["year"];
            _loc5_["Value"] = int(param3["value"]);
         }
         param1(_loc5_,param4);
      }
      
      public static function _-Gi(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(_loc5_)
         {
            _-8L(_-2O,param1,param2,_-3T,param3,param4);
         }
      }
      
      private static function _-3T(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(!_loc5_)
         {
            _-8L(_-KA,param1,param2,_-BG,param3,param4);
         }
      }
      
      private static function _-BG(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(_loc7_ || (param2))
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
               }
            }
            _loc5_ = new Object();
            if(_loc7_)
            {
               if(param4._-B4)
               {
                  _loc5_["Name"] = "LevelAverageMetric";
                  if(_loc7_)
                  {
                  }
                  _loc5_["Day"] = param2["day"];
                  if(_loc7_)
                  {
                     _loc5_["Month"] = param2["month"];
                     if(!_loc6_)
                     {
                        _loc5_["Year"] = param2["year"];
                        if(_loc7_ || (_-7K))
                        {
                        }
                        _loc5_["Max"] = int(param3["max"]);
                        _loc5_["Average"] = int(param3["average"]);
                        if(!(_loc6_ && (_-7K)))
                        {
                           _loc5_["Total"] = Number(param3["total"]);
                           if(_loc7_)
                           {
                           }
                        }
                     }
                     _loc5_["Min"] = int(param3["min"]);
                     if(!_loc6_)
                     {
                        _loc5_["Max"] = int(param3["max"]);
                     }
                     _loc5_["Average"] = int(param3["average"]);
                     if(!(_loc6_ && (_-7K)))
                     {
                        _loc5_["Total"] = Number(param3["total"]);
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  return;
               }
               param1(_loc5_,param4);
               return;
            }
            _loc5_["Metric"] = param2["metric"];
            if(!_loc6_)
            {
               _loc5_["Level"] = param2["level"];
               if(_loc6_)
               {
               }
               _loc5_["Month"] = param2["month"];
               if(!_loc6_)
               {
                  _loc5_["Year"] = param2["year"];
                  if(_loc7_ || (_-7K))
                  {
                  }
                  _loc5_["Max"] = int(param3["max"]);
                  _loc5_["Average"] = int(param3["average"]);
                  if(!(_loc6_ && (_-7K)))
                  {
                     _loc5_["Total"] = Number(param3["total"]);
                     if(_loc7_)
                     {
                     }
                     return;
                  }
                  param1(_loc5_,param4);
                  return;
               }
               _loc5_["Min"] = int(param3["min"]);
               if(!_loc6_)
               {
                  _loc5_["Max"] = int(param3["max"]);
               }
               _loc5_["Average"] = int(param3["average"]);
               if(!(_loc6_ && (_-7K)))
               {
                  _loc5_["Total"] = Number(param3["total"]);
                  if(_loc7_)
                  {
                  }
                  return;
               }
               param1(_loc5_,param4);
               return;
            }
            _loc5_["Day"] = param2["day"];
            if(_loc7_)
            {
               _loc5_["Month"] = param2["month"];
               if(!_loc6_)
               {
                  _loc5_["Year"] = param2["year"];
                  if(_loc7_ || (_-7K))
                  {
                  }
                  _loc5_["Max"] = int(param3["max"]);
                  _loc5_["Average"] = int(param3["average"]);
                  if(!(_loc6_ && (_-7K)))
                  {
                     _loc5_["Total"] = Number(param3["total"]);
                     if(_loc7_)
                     {
                     }
                  }
                  param1(_loc5_,param4);
               }
               _loc5_["Min"] = int(param3["min"]);
               if(!_loc6_)
               {
                  _loc5_["Max"] = int(param3["max"]);
               }
               _loc5_["Average"] = int(param3["average"]);
               if(!(_loc6_ && (_-7K)))
               {
                  _loc5_["Total"] = Number(param3["total"]);
                  if(_loc7_)
                  {
                  }
               }
               param1(_loc5_,param4);
            }
            return;
         }
      }
      
      private static function _-8L(param1:String, param2:String, param3:String, param4:Function, param5:Function, param6:Object) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         if(!_loc9_)
         {
            if(param6 == null)
            {
            }
            _loc7_ = new Object();
            _loc7_["metric"] = param2;
            if(_loc8_ || (param1))
            {
               _loc7_["level"] = param3;
               if(!(_loc9_ && (_-7K)))
               {
                  _loc7_["day"] = param6.hasOwnProperty("day")?param6["day"]:0;
                  if(!_loc9_)
                  {
                     _loc7_["month"] = param6.hasOwnProperty("month")?param6["month"]:0;
                     if(_loc8_)
                     {
                     }
                     return;
                  }
               }
            }
            _loc7_["year"] = param6.hasOwnProperty("year")?param6["year"]:0;
            if(_loc8_)
            {
               _-El._-2Z(_-KZ,param1,param4,param5,_loc7_);
            }
            return;
         }
         var _loc7_:Object = new Object();
         _loc7_["metric"] = param2;
         if(_loc8_ || (param1))
         {
            _loc7_["level"] = param3;
            if(!(_loc9_ && (_-7K)))
            {
               _loc7_["day"] = param6.hasOwnProperty("day")?param6["day"]:0;
               if(!_loc9_)
               {
                  _loc7_["month"] = param6.hasOwnProperty("month")?param6["month"]:0;
                  if(_loc8_)
                  {
                  }
                  return;
               }
            }
         }
         _loc7_["year"] = param6.hasOwnProperty("year")?param6["year"]:0;
         if(_loc8_)
         {
            _-El._-2Z(_-KZ,param1,param4,param5,_loc7_);
         }
      }
   }
}
