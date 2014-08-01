package _-D3
{
   public class _-Ee extends Object
   {
      
      public function _-Ee(param1:Function = null, param2:Array = null, param3:Boolean = false, param4:int = 0)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!(_loc6_ && (param2)))
         {
            super();
            if(!(_loc6_ && (this)))
            {
               this._func = param1;
               if(!(_loc6_ && (param3)))
               {
                  this._params = param2;
                  if(_loc6_ && (param1))
                  {
                  }
                  return;
               }
               this.loop = param3;
               return;
            }
         }
         this._priority = param4;
         if(!(_loc6_ && (param1)))
         {
            this.loop = param3;
         }
      }
      
      private var _func:Function;
      
      private var _params:Array;
      
      private var _priority:int;
      
      public var loop:Boolean = false;
      
      public function init() : void
      {
      }
      
      public function stop() : void
      {
      }
      
      public function run() : Boolean
      {
         return this._func.apply(null,this._params);
      }
      
      public function get _-1P() : Function
      {
         return this._func;
      }
      
      public function get params() : Array
      {
         return this._params;
      }
   }
}
