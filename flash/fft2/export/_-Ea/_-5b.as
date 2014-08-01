package _-Ea
{
   public final class _-5b extends Object
   {
      
      public function _-5b(param1:Number = 0, param2:uint = 0)
      {
         var _loc4_:* = false;
         if(_loc3_ || (_loc3_))
         {
            super();
            if(_loc3_ || (param2))
            {
            }
            this.setValue(param1,param2);
            return;
         }
         this._-9o = 0;
         if(!(_loc4_ && (param1)))
         {
            this.setValue(param1,param2);
         }
      }
      
      private var _-HI:Number;
      
      private var use :_-5b;
      
      private var _-9o:Number;
      
      public function get value() : Number
      {
         return Number(this.toString());
      }
      
      public function set value(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (param1)))
         {
            this.setValue(param1);
         }
      }
      
      public function _-JV(param1:Number) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (this)))
         {
            if(_loc3_ || (_loc2_))
            {
            }
            this.value = this.value;
         }
      }
      
      public function setValue(param1:Number = 0, param2:uint = 0) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = param1.toString();
         if(_loc5_)
         {
            if(!_loc4_)
            {
               if(_loc4_)
               {
               }
               param2 = param2;
            }
            this._-HI = _loc3_.charCodeAt(param2) ^ this._-9o;
            if(!_loc4_)
            {
               if(param2 < _loc3_.length)
               {
                  if(_loc5_)
                  {
                     this.use  = new _-5b(param1,param2);
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  this.use  = null;
                  if(_loc5_)
                  {
                  }
               }
               return;
            }
         }
         this._-A1();
      }
      
      public function _-A1() : void
      {
         var _loc3_:* = true;
         var _loc1_:uint = int(2147483647 * Math.random());
         if(_loc3_ || (_loc1_))
         {
            this._-HI = this._-HI ^ _loc1_ ^ this._-9o;
            if(!(_loc2_ && (_loc2_)))
            {
               this._-9o = _loc1_;
            }
         }
      }
      
      public function toString() : String
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
