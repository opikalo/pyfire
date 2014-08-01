package _-72
{
   import _-3b.observerNotify;
   
   public class _-5B extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-59 = null;
      }
      }
      
      public function _-5B()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static var _-59:_-5B = null;
      
      public static function getInstance() : _-5B
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_-5B)))
         {
            if(!(_loc1_ && (_loc2_)))
            {
               if(_-59 == null)
               {
                  if(_loc2_)
                  {
                  }
               }
            }
            return _-59;
         }
         _-59 = new _-5B();
         return _-59;
      }
      
      public static function _-72(param1:String, param2:*) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_ || (_-5B))
         {
            _-5B.getInstance().broadcastCommand(new break(param1,param2));
         }
      }
      
      private var _-Kj:Vector.<_-4W>;
      
      public function _-H5(param1:_-4W) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(this._-Kj == null)
            {
               if(_loc2_ || (_loc3_))
               {
                  this._-Kj = new Vector.<_-4W>();
                  if(_loc3_)
                  {
                  }
               }
            }
            this._-Kj.push(param1);
         }
      }
      
      public function broadcastCommand(param1:break) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < this._-Kj.length)
         {
            this._-Kj[_loc2_].observerNotify(param1);
            if(!_loc3_)
            {
               _loc2_++;
               if(_loc4_ || (param1))
               {
                  continue;
               }
               break;
            }
            break;
         }
      }
      
      public function _-L(param1:_-4W) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         loop0:
         while(true)
         {
            while(_loc2_ < this._-Kj.length)
            {
               if(param1 === this._-Kj[_loc2_])
               {
                  if(_loc3_ || (param1))
                  {
                     this._-Kj.splice(_loc2_,1);
                     if(_loc4_ && (_loc3_))
                     {
                        continue loop0;
                     }
                     continue loop0;
                  }
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        _loc2_--;
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        break;
                     }
                  }
                  continue;
               }
               continue loop0;
               if(param1 === this._-Kj[_loc2_])
               {
               }
               continue loop0;
            }
            return;
         }
      }
   }
}
