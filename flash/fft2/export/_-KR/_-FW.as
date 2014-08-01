package _-KR
{
   public class _-FW extends Object
   {
      
      public function _-FW()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
            }
            return;
         }
         this.list = new Vector.<_-Bj>();
      }
      
      public var list:Vector.<_-Bj>;
      
      public function case(param1:_-Bj) : _-Bj
      {
         var _loc3_:* = true;
         if(_loc3_ || (_loc2_))
         {
            this.list.push(param1);
         }
         return param1;
      }
      
      public function _-FE(param1:_-Bj) : _-Bj
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:_-Bj = null;
         var _loc2_:* = 0;
         while(_loc2_ < this.list.length)
         {
            _loc3_ = this.list[_loc2_];
            if(_loc5_)
            {
               _loc3_._-7Y(param1);
               if(_loc5_)
               {
                  if(param1 === this.list[_loc2_])
                  {
                     if(_loc5_)
                     {
                     }
                     if(_loc5_)
                     {
                     }
                     _loc2_ = _loc2_;
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
               }
               this.list.splice(_loc2_,1);
               if(_loc5_ || (_loc3_))
               {
                  if(_loc5_)
                  {
                  }
                  _loc2_ = _loc2_;
                  if(_loc4_)
                  {
                     continue;
                  }
               }
            }
            _loc2_++;
         }
         return param1;
      }
      
      public function _-7-(param1:int) : _-Bj
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.list[_loc3_].id == param1)
            {
               if(!_loc4_)
               {
                  return this.list[_loc3_];
               }
            }
            _loc3_++;
            if(!(_loc4_ && (_loc3_)))
            {
               continue;
            }
            break;
         }
         return null;
      }
      
      public function _-EW(param1:Array) : Vector.<_-Bj>
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:_-Bj = null;
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = this._-7-(param1[_loc3_]);
            if(_loc4_ != null)
            {
               if(!(_loc6_ && (param1)))
               {
                  _loc2_.push(_loc4_);
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function _-9Q(param1:Object, param2:Array) : void
      {
         var _loc5_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < param2.length)
         {
            if(param1 === param2[_loc3_])
            {
               if(_loc5_)
               {
                  param2.splice(_loc3_,1);
                  if(_loc4_)
                  {
                     break;
                  }
                  break;
               }
               break;
            }
            _loc3_++;
            if(_loc5_ || (param1))
            {
               continue;
            }
            break;
         }
      }
      
      public function _-67() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:_-Bj = null;
         var _loc2_:* = 0;
         while(_loc2_ < this.list.length)
         {
            _loc1_ = this.list[_loc2_];
            if(_loc3_)
            {
               _loc1_._-0o = this._-EW(_loc1_.connectionIDs);
               if(_loc4_ && (_loc1_))
               {
                  continue;
               }
            }
            _loc2_++;
         }
      }
      
      public function _-5T() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-1-() : Array
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:_-Bj = null;
         if(!(_loc5_ && (_loc3_)))
         {
            this._-5T();
         }
         var _loc1_:Array = [];
         var _loc3_:* = 0;
         while(_loc3_ < this.list.length)
         {
            _loc2_ = this.list[_loc3_];
            if(!_loc5_)
            {
               _loc1_.push({
                  "id":_loc2_.id,
                  "x":_loc2_.x,
                  "y":_loc2_.y,
                  "connectionIDs":_loc2_.connectionIDs
               });
               if(_loc5_ && (this))
               {
                  continue;
               }
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function _-Hi(param1:Array) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Object = null;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc4_ || (this))
            {
               this.list.push(new _-Bj(_loc2_));
               if(!_loc4_)
               {
                  continue;
               }
            }
            this._-67();
            if(_loc4_ || (_loc2_))
            {
               _loc3_++;
            }
         }
      }
   }
}
