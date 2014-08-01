package _-Ea
{
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import flash.events.Event;
   import flash.utils.flash_proxy;
   import flash.events.TimerEvent;
   
   public dynamic class _-Ab extends Proxy
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(_loc2_ || (_-Ab))
      {
         _-Fl = "MochiConsumables";
         if(!_loc1_)
         {
            _-e = " syncMaint";
         }
         _-3C = "InvNotReady";
         _dispatcher = new _-IT();
         return;
      }
      if(!(_loc1_ && (_loc1_)))
      {
         case  = "InvWritten";
         if(_loc2_)
         {
            ERROR = "Error";
         }
         _dispatcher = new _-IT();
         return;
      }
      if(_loc2_ || (_-Ab))
      {
         _-IU = "InvValueError";
         if(_loc2_ || (_loc1_))
         {
            _-3C = "InvNotReady";
            _dispatcher = new _-IT();
         }
      }
      }
      
      public function _-Ab()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         if(!_loc2_)
         {
            _-Kt.addEventListener(_-Kt._-C5,this._-47);
            _-Kt.addEventListener(_-Kt._-DL,this._-BZ);
            if(_loc2_)
            {
            }
            this._-AX = 0;
            if(!_loc2_)
            {
               this._timer = new Timer(1000);
               if(_loc2_ && (_loc1_))
               {
               }
               return;
            }
            this._timer.addEventListener(TimerEvent.TIMER,this.sync);
            if(_loc1_ || (this))
            {
               this._timer.start();
               if(_-3Z._-4i)
               {
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  this._-2Q();
               }
               return;
            }
            this._-4i();
            return;
         }
         _-3Z.addEventListener(_-3Z._-L9,this._-4i);
         if(_loc1_ || (this))
         {
            _-3Z.addEventListener(_-3Z._-G5,this._-2Q);
            this. get = new Object();
            this._-FX = false;
            this._-8M = 0;
            this._-AX = 0;
            if(!_loc2_)
            {
               this._timer = new Timer(1000);
               if(_loc2_ && (_loc1_))
               {
               }
               return;
            }
         }
         this._timer.addEventListener(TimerEvent.TIMER,this.sync);
         if(_loc1_ || (this))
         {
            this._timer.start();
            if(_-3Z._-4i)
            {
               if(_loc2_)
               {
               }
            }
            else
            {
               this._-2Q();
            }
            return;
         }
         this._-4i();
      }
      
      private static const _-Fl:String = "MochiConsumables";
      
      private static const _-e:String = " syncMaint";
      
      public static const _-7i:String = "InvReady";
      
      public static const case :String = "InvWritten";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IoError";
      
      public static const _-IU:String = "InvValueError";
      
      public static const _-3C:String = "InvNotReady";
      
      private static var _dispatcher:_-IT;
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function _-KT(param1:String, param2:Object) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_ || (param2))
         {
            _dispatcher._-KT(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!_loc4_)
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
      
      private var _timer:Timer;
      
      private var _-6C:Object;
      
      private var _-FX:Boolean;
      
      private var _-8M:Number;
      
      private var _-AX:Number;
      
      private var _-A4:Array;
      
      private var  get:Object;
      
      public function _-CX() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            _-Kt.removeEventListener(_-Kt._-DL,this._-BZ);
            if(_loc1_ && (_loc2_))
            {
            }
            _-3Z.removeEventListener(_-3Z._-G5,this._-2Q);
            return;
         }
         _-3Z.removeEventListener(_-3Z._-L9,this._-4i);
         if(_loc2_)
         {
            _-3Z.removeEventListener(_-3Z._-G5,this._-2Q);
         }
      }
      
      private function _-2Q(param1:Object = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            this._-6C = null;
         }
      }
      
      private function _-4i(param1:Object = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc2_))
         {
            _-Lg.get(_-Fl,this._-2S);
         }
      }
      
      private function _-BZ(param1:Object) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            if(!this[param1.id + _-e])
            {
               this[param1.id + _-e] = 0;
               if(_loc2_ || (this))
               {
               }
            }
            if(!this[param1.id])
            {
               if(!(_loc3_ && (_loc3_)))
               {
                  this[param1.id] = 0;
                  if(_loc3_ && (this))
                  {
                  }
                  if(!this[param1.privateProperties.tag])
                  {
                     this[param1.privateProperties.tag] = 0;
                     if(_loc2_ || (_loc3_))
                     {
                     }
                     return;
                  }
               }
            }
            this[param1.id + _-e] = this[param1.id + _-e] + param1.count;
            this[param1.id] = this[param1.id] + param1.count;
            if(_loc2_)
            {
               if(_loc2_ || (param1))
               {
                  if((param1.privateProperties) && !(param1.privateProperties))
                  {
                     if(_loc2_ || (_loc3_))
                     {
                        if(!this[param1.privateProperties.tag])
                        {
                           this[param1.privateProperties.tag] = 0;
                           if(_loc2_ || (_loc3_))
                           {
                           }
                        }
                     }
                  }
               }
               if(_loc2_ || (param1))
               {
                  if(param1.privateProperties.consumable)
                  {
                     if(_loc2_ || (_loc3_))
                     {
                        if(!this[param1.privateProperties.tag])
                        {
                           this[param1.privateProperties.tag] = 0;
                           if(_loc2_ || (_loc3_))
                           {
                           }
                        }
                     }
                  }
               }
               else
               {
                  param1.privateProperties;
                  if(param1.privateProperties.consumable)
                  {
                     if(_loc2_ || (_loc3_))
                     {
                        if(!this[param1.privateProperties.tag])
                        {
                           this[param1.privateProperties.tag] = 0;
                           if(_loc2_ || (_loc3_))
                           {
                           }
                        }
                     }
                  }
               }
            }
            if(_loc2_)
            {
               return;
            }
            return;
         }
         this[param1.privateProperties.tag] = this[param1.privateProperties.tag] + param1.privateProperties.inc * param1.count;
      }
      
      private function _-47(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc2_))
         {
            this. get[param1.id] = {
               "properties":param1.properties,
               "count":param1.count
            };
         }
      }
      
      private function _-2S(param1:_-Lg) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-8Q(param1:_-Lg) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (this))
         {
            this._-FX = false;
            if(_loc2_ || (_loc2_))
            {
               if(param1.error)
               {
                  if(!(_loc3_ && (_loc3_)))
                  {
                     _-KT(ERROR,{
                        "type":IO_ERROR,
                        "error":param1.error
                     });
                     if(_loc2_ || (param1))
                     {
                     }
                  }
               }
               _-KT(case ,{});
            }
            this._-8M = -1;
            if(!(_loc3_ && (_loc2_)))
            {
               _-KT(case ,{});
            }
         }
      }
      
      private function sync(param1:Event = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override flash_proxy function getProperty(param1:*) : *
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            if(this._-6C == null)
            {
               if(_loc2_ && (this))
               {
               }
               return _-5b(this._-6C[param1]).value;
            }
            if(this._-6C[param1])
            {
               if(_loc3_)
               {
                  return _-5b(this._-6C[param1]).value;
               }
            }
            return undefined;
         }
         _-KT(ERROR,{"type":_-3C});
         if(!(_loc2_ && (_loc3_)))
         {
            return -1;
         }
         if(this._-6C[param1])
         {
            if(_loc3_)
            {
               return _-5b(this._-6C[param1]).value;
            }
         }
         return undefined;
      }
      
      override flash_proxy function deleteProperty(param1:*) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            if(!this._-6C[param1])
            {
               if(!(_loc2_ && (this)))
               {
                  if(_loc3_ || (param1))
                  {
                     return false;
                  }
                  false;
               }
               if(!(_loc2_ && (this)))
               {
                  return true;
               }
               return true;
            }
            this._-A4.splice(this._-A4.indexOf(param1),1);
            if(_loc2_ && (param1))
            {
            }
            return true;
         }
         delete this._-6C[param1];
         if(_loc3_)
         {
            true;
         }
         return true;
      }
      
      override flash_proxy function hasProperty(param1:*) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override flash_proxy function setProperty(param1:*, param2:*) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!_loc6_)
         {
            if(this._-6C == null)
            {
               _-KT(ERROR,{"type":_-3C});
               if(!(_loc6_ && (_loc3_)))
               {
                  return;
               }
            }
            if(!(param2 is Number))
            {
               _-KT(ERROR,{
                  "type":_-IU,
                  "error":"Invalid type",
                  "arg":param2
               });
               return;
            }
            if(this._-6C[param1])
            {
               if(!(_loc6_ && (_loc3_)))
               {
                  if(!(_loc6_ && (param2)))
                  {
                     if(_loc3_.value == param2)
                     {
                        if(_loc7_)
                        {
                           return;
                        }
                     }
                     return;
                  }
                  _loc3_.value = param2;
                  if(_loc6_)
                  {
                  }
                  return;
               }
            }
            else
            {
               this._-A4.push(param1);
               if(!_loc6_)
               {
                  this._-6C[param1] = new _-5b(param2);
               }
            }
         }
         if(_loc6_)
         {
         }
         if(_loc7_)
         {
            _loc4_._-AX = _loc5_;
         }
      }
      
      override flash_proxy function nextNameIndex(param1:int) : int
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override flash_proxy function nextName(param1:int) : String
      {
         return this._-A4[param1 - 1];
      }
   }
}
