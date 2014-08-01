package Playtomic
{
   import flash.display.Loader;
   
   public final class _-5x extends Object
   {
      
      public function _-5x()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            this._-0u = {};
            if(_loc2_)
            {
            }
            this._-I8 = "Just now";
            return;
         }
         super();
         if(_loc2_)
         {
            this._-A3 = new Date();
            if(!(_loc1_ && (_loc2_)))
            {
               this._-I8 = "Just now";
            }
         }
      }
      
      public var LevelId:String;
      
      public var _-Cb:String = "";
      
      public var include:String = "";
      
      public var _-45:String = "";
      
      public var Permalink:String;
      
      public var Name:String;
      
      public var _-7K:String;
      
      public var _-I:Loader;
      
      public var _-02:int;
      
      public var switch:int;
      
      public var _-8E:int;
      
      public var _-0e:int;
      
      public var _-Ft:int;
      
      public var _-A2:int;
      
      public var _-AR:Number;
      
      public var _-KQ:int;
      
      public var _-A3:Date;
      
      public var _-I8:String;
      
      public var _-0u:Object;
      
      function _-Fv(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(_loc2_ || (_loc2_))
            {
               if(_loc2_)
               {
                  if(param1 == null || param1 == null)
                  {
                     if(_loc3_ && (_loc2_))
                     {
                        this._-I.loadBytes(_-C9.Base64Decode(param1));
                     }
                  }
                  else
                  {
                     this._-I = new Loader();
                     if(_loc2_ || (_loc2_))
                     {
                        this._-I.loadBytes(_-C9.Base64Decode(param1));
                     }
                  }
                  return;
               }
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                  }
                  if(!_loc3_)
                  {
                     return;
                  }
                  return;
               }
               param1 == null;
               if(_loc3_)
               {
               }
               if(!_loc3_)
               {
                  return;
               }
               return;
            }
            if(param1 == "")
            {
               if(_loc3_ && (_loc2_))
               {
                  this._-I.loadBytes(_-C9.Base64Decode(param1));
               }
            }
            else
            {
               this._-I = new Loader();
               if(_loc2_ || (_loc2_))
               {
                  this._-I.loadBytes(_-C9.Base64Decode(param1));
               }
            }
            return;
         }
      }
      
      public function _-Jm() : String
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
