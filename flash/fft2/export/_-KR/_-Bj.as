package _-KR
{
   public class _-Bj extends Object
   {
      
      public function _-Bj(param1:Object = null)
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (param1)))
         {
            super();
            if(param1 != null)
            {
               this._-Gd(param1);
            }
            if(this.connectionIDs == null)
            {
               if(_loc3_ || (this))
               {
               }
               return;
            }
            if(this._-0o == null)
            {
               this._-0o = new Vector.<_-Bj>();
            }
            return;
         }
         this.connectionIDs = [];
         if(_loc3_ || (_loc3_))
         {
            if(this._-0o == null)
            {
               this._-0o = new Vector.<_-Bj>();
            }
         }
      }
      
      public static function _-9Q(param1:Object, param2:Object) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            while(_loc3_ < param2.length)
            {
               if(param1 === param2[_loc3_])
               {
                  if(!(_loc5_ && (param2)))
                  {
                     param2.splice(_loc3_,1);
                     if(_loc5_ && (_-Bj))
                     {
                        continue loop0;
                     }
                  }
                  if(_loc4_ || (param2))
                  {
                     if(!(_loc4_ || (param1)))
                     {
                        continue;
                     }
                  }
                  _loc3_ = _loc3_;
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
               }
               _loc3_++;
               if(_loc4_ || (_-Bj))
               {
                  continue loop0;
               }
               break;
            }
            return;
         }
      }
      
      public var id:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var connectionIDs:Array;
      
      public var _-0o:Vector.<_-Bj>;
      
      public function _-8S(param1:_-Bj) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            this._-7Y(param1);
            if(_loc3_ || (this))
            {
            }
            return;
         }
         this.connectionIDs.push(param1.id);
         if(!(_loc2_ && (this)))
         {
            this._-0o.push(param1);
         }
      }
      
      public function _-7Y(param1:_-Bj) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc2_)))
         {
            _-9Q(param1.id,this.connectionIDs);
            if(_loc2_)
            {
            }
            return;
         }
         _-9Q(param1,this._-0o);
      }
      
      public function _-Gd(param1:Object) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(this.hasOwnProperty(_loc2_))
               {
                  if(_loc6_ && (this))
                  {
                     continue;
                  }
               }
               else
               {
                  continue;
               }
            }
            this[_loc2_] = param1[_loc2_];
         }
      }
   }
}
