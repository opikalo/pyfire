package _-Ea
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.net.ObjectEncoding;
   import flash.net.URLVariables;
   import flash.net.URLRequest;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequestMethod;
   import flash.net.URLRequestHeader;
   import flash.net.URLLoaderDataFormat;
   import flash.events.SecurityErrorEvent;
   
   public class _-Lg extends EventDispatcher
   {
      
      public function _-Lg(param1:String = "", param2:Function = null)
      {
         var _loc4_:* = true;
         if(_loc4_ || (this))
         {
            super();
            if(!_loc3_)
            {
               this.key = param1;
               if(_loc4_ || (param1))
               {
               }
               return;
            }
         }
         this.callback = param2;
      }
      
      public static function get(param1:String, param2:Function) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:_-Lg = new _-Lg(param1,param2);
         if(_loc4_ || (param2))
         {
            _loc3_._-HB();
         }
      }
      
      public static function put(param1:String, param2:*, param3:Function) : void
      {
         var _loc4_:_-Lg = new _-Lg(param1,param3);
         _loc4_._-GG(param2);
      }
      
      public var _-3M:URLLoader;
      
      public var key:String = null;
      
      public var data = null;
      
      public var error:Event = null;
      
      public var try :String = null;
      
      public var callback:Function = null;
      
      public function _-5M(param1:*) : ByteArray
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc4_)
         {
            _loc2_.objectEncoding = ObjectEncoding.AMF3;
            if(!(_loc4_ && (_loc3_)))
            {
               _loc2_.writeObject(param1);
               if(_loc3_)
               {
               }
            }
            _loc2_.compress();
         }
         return _loc2_;
      }
      
      public function _-By(param1:ByteArray) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            param1.objectEncoding = ObjectEncoding.AMF3;
            if(!_loc3_)
            {
               param1.uncompress();
            }
         }
         return param1.readObject();
      }
      
      public function _-4n(param1:String, param2:ByteArray) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-5F(param1:Event) : void
      {
         var _loc5_:* = false;
         var event:Event = param1;
         try
         {
            if(this._-3M.data.length)
            {
               if(_loc4_)
               {
                  this.data = this._-By(this._-3M.data);
               }
               return;
            }
            this.data = null;
         }
         catch(e:Error)
         {
            _-5R(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"deserialize error: " + e.toString()));
            return;
         }
         if(this.callback != null)
         {
            this._-3I();
            this.close();
         }
         else
         {
            dispatchEvent(event);
            if(_loc4_ || (_loc2_))
            {
               this.close();
            }
         }
      }
      
      public function _-5R(param1:IOErrorEvent) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            this.data = null;
            if(_loc2_)
            {
               this.error = param1;
               if(_loc3_)
               {
               }
               this._-3I();
               if(_loc2_ || (this))
               {
                  this.close();
               }
            }
            if(this.callback != null)
            {
               this._-3I();
               if(_loc2_ || (this))
               {
                  this.close();
               }
            }
            else
            {
               dispatchEvent(param1);
               if(!(_loc3_ && (param1)))
               {
                  this.close();
               }
            }
         }
      }
      
      public function _-KS(param1:SecurityErrorEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            this._-5R(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"security error: " + param1.toString()));
         }
      }
      
      public function _-3I() : void
      {
         try
         {
            this.callback(this);
         }
         catch(e:Error)
         {
         }
      }
      
      public function close() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (this))
         {
            if(this._-3M)
            {
               this._-3M.removeEventListener(Event.COMPLETE,this._-5F);
               if(_loc2_)
               {
                  this._-3M.removeEventListener(IOErrorEvent.IO_ERROR,this._-5R);
                  this._-3M.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._-KS);
                  if(_loc1_ && (_loc1_))
                  {
                  }
               }
               this._-3M.close();
            }
            this.error = null;
            if(_loc2_ || (this))
            {
               this.callback = null;
            }
            return;
         }
         this._-3M = null;
         if(_loc2_ || (this))
         {
            this.error = null;
            if(_loc2_ || (this))
            {
               this.callback = null;
            }
         }
      }
      
      public function _-HB() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this._-4n("get",this._-5M(null));
         }
      }
      
      public function _-GG(param1:*) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (this))
         {
            this._-4n("put",this._-5M(param1));
         }
      }
      
      override public function toString() : String
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
