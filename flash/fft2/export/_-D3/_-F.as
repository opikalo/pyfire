package _-D3
{
   public class _-F extends Object
   {
      
      public function _-F()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || (_loc1_))
            {
            }
            return;
         }
         this._-0P = new Vector.<_-Ee>();
      }
      
      private var _-Lr:_-Ee;
      
      private var _-0P:Vector.<_-Ee>;
      
      public function add(param1:_-Ee) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this._-0P.push(param1);
         }
      }
      
      public function _-Eq(param1:_-Ee) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-0P.unshift(param1);
         }
      }
      
      public function remove(param1:_-Ee) : _-Ee
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         loop0:
         while(true)
         {
            while(_loc2_ < this._-0P.length)
            {
               if(param1 === this._-0P[_loc2_])
               {
                  if(!_loc3_)
                  {
                     this._-0P.splice(_loc2_,1);
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc4_ || (this)))
                           {
                              continue;
                           }
                        }
                        if(_loc4_ || (param1))
                        {
                           break;
                        }
                        break;
                        break;
                     }
                  }
                  continue loop0;
               }
               _loc2_++;
               if(_loc4_ || (this))
               {
                  continue loop0;
               }
               break;
            }
            return param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this._-0P = new Vector.<_-Ee>();
         }
      }
      
      public function update() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get _-4e() : Vector.<_-Ee>
      {
         return this._-0P;
      }
      
      public function get _-69() : _-Ee
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            if(this._-0P.length > 0)
            {
               if(_loc1_ || (this))
               {
                  return this._-0P[0];
               }
            }
         }
         return null;
      }
      
      public function set _-69(param1:_-Ee) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (param1)))
         {
            this._-Lr = param1;
         }
      }
   }
}
