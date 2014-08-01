package each 
{
   import flash.utils.getTimer;
   
   public class _-CN extends Object
   {
      
      public function _-CN()
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            super();
            if(_loc3_ && (_loc1_))
            {
            }
            this._paused = true;
            return;
         }
         this._startTime = this._pauseTime = getTimer();
         if(!_loc3_)
         {
            this._paused = true;
         }
      }
      
      public var _startTime:uint;
      
      private var _pauseTime:int;
      
      private var _paused:Boolean = false;
      
      public function start() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            this._startTime = getTimer();
            if(_loc1_)
            {
            }
            return;
         }
         this._paused = false;
      }
      
      private function pause() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this._pauseTime = getTimer();
            if(_loc1_ || (this))
            {
            }
            return;
         }
         this._paused = true;
      }
      
      private function resume() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            this._-E2 = this._pauseTime - this._startTime;
            if(_loc2_)
            {
            }
            return;
         }
         this._paused = false;
      }
      
      public function get _-E2() : int
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function set _-E2(param1:int) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc3_))
         {
            this._startTime = getTimer() - param1;
         }
      }
      
      public function get paused() : Boolean
      {
         return this._paused;
      }
      
      public function set paused(param1:Boolean) : void
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
