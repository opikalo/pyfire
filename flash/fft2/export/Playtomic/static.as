package Playtomic
{
   final class static extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(!(_loc2_ && (_loc2_)))
      {
         _-6m = new Array();
      }
      }
      
      function static()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (this))
         {
            super();
         }
      }
      
      private static var _-6m:Array;
      
      static function Create() : static
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private var _data:String = "";
      
      private var _-IC:Boolean = false;
      
      private var _-EX:Boolean = false;
      
      var _-0n:Boolean = false;
      
      function _-Cr(param1:Array) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:static = null;
         loop0:
         while(true)
         {
            while(_loc2_ > -1)
            {
               this._-7S(param1[_loc2_]);
               if(_loc4_)
               {
                  param1.splice(_loc2_,1);
                  if(!(_loc5_ && (_loc2_)))
                  {
                     if(this._-0n)
                     {
                        if(_loc4_)
                        {
                           this._-7a();
                           if(_loc4_)
                           {
                              _loc3_ = Create();
                              if(!(_loc5_ && (param1)))
                              {
                                 _loc3_._-Cr(param1);
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                              }
                           }
                           else
                           {
                              break;
                           }
                        }
                        else
                        {
                           continue loop0;
                        }
                     }
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                     }
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
                  else
                  {
                     break;
                  }
                  break;
               }
               return;
               break;
            }
            Log._-C1 = this;
            return;
         }
      }
      
      function _-7S(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-7a() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            if(this._data == "")
            {
               if(_loc2_)
               {
                  return;
               }
            }
            _-El._-4r(this._-Le,"/tracker/q.aspx?q=" + this._data + "&url=" + (this._-IC?Log._-9n:Log._-9U));
         }
      }
      
      private function _-Le(param1:Boolean) : void
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
