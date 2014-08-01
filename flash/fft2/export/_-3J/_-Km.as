package _-3J
{
   public class _-Km extends Object
   {
      
      public function _-Km(param1:Object = null)
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               if(param1 != null)
               {
                  if(_loc3_)
                  {
                  }
               }
            }
            this.update(param1);
         }
      }
      
      public var cash:int = 0;
      
      public var score:int = 0;
      
      public var level:int = 0;
      
      public var _-CC:String = "";
      
      public var _-6A:int = 0;
      
      public var _-79:int = 0;
      
      public var _-4q:int = 0;
      
      public var _-I3:int = 0;
      
      public var engine:int = 0;
      
      public var _-E0:int = 0;
      
      public var _-4g:int = 0;
      
      public var _-Dp:int = 0;
      
      public var _-71:int = 0;
      
      public function _-1Z(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function update(param1:Object) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = ["cash","score","level"];
         while(_loc3_ < _loc2_.length)
         {
            if(param1[_loc2_[_loc3_]] != undefined)
            {
               if(!_loc4_)
               {
                  this[_loc2_[_loc3_]] = param1[_loc2_[_loc3_]];
                  if(!(_loc5_ || (_loc3_)))
                  {
                     continue;
                  }
               }
               else
               {
                  continue;
               }
            }
            _loc3_++;
            if(!_loc4_)
            {
               continue;
            }
            break;
         }
      }
   }
}
