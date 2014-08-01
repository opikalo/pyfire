package _-Ea
{
   public class _-IT extends Object
   {
      
      public function _-IT()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            super();
            if(_loc2_ || (_loc1_))
            {
            }
            return;
         }
         this._-Ds = {};
      }
      
      private var _-Ds:Object;
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!_loc3_)
         {
            this.removeEventListener(param1,param2);
            if(!(_loc3_ && (param1)))
            {
               this._-Ds[param1].push(param2);
            }
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Object = null;
         if(_loc7_)
         {
            if(this._-Ds[param1] == undefined)
            {
               if(!_loc6_)
               {
                  this._-Ds[param1] = [];
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
         }
         for(_loc3_ in this._-Ds[param1])
         {
            if(_loc7_)
            {
               if(this._-Ds[param1][_loc3_] != param2)
               {
                  if(_loc6_ && (param1))
                  {
                     continue;
                  }
               }
               else
               {
                  this._-Ds[param1].splice(Number(_loc3_),1);
                  continue;
               }
            }
         }
      }
      
      public function _-KT(param1:String, param2:Object) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(!(_loc8_ && (param1)))
         {
            if(this._-Ds[param1] == undefined)
            {
               if(_loc7_ || (param2))
               {
                  return;
               }
            }
         }
         for(_loc3_ in this._-Ds[param1])
         {
            if(_loc7_ || (param2))
            {
               this._-Ds[param1][_loc3_](param2);
            }
         }
      }
   }
}
