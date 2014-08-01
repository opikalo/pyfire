package CPMStar
{
   import flash.display.Sprite;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.Security;
   import flash.display.DisplayObjectContainer;
   import flash.net.URLRequest;
   
   public class _-IK extends Sprite
   {
      
      public function _-IK(param1:String)
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && (_loc3_)))
            {
               this._-7T = param1;
               if(_loc3_)
               {
               }
            }
            addEventListener(Event.ADDED,this._-5q);
         }
      }
      
      private var  if:Loader;
      
      private var _-7T:String;
      
      private function _-5q(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(_loc4_ || (this))
         {
            removeEventListener(Event.ADDED,this._-5q);
            if(_loc4_ || (param1))
            {
            }
            _loc3_ = parent;
            if(_loc4_ || (_loc2_))
            {
               this. if = new Loader();
               if(_loc4_ || (this))
               {
                  this. if.contentLoaderInfo.addEventListener(Event.INIT,this._-BT);
                  if(_loc4_ || (this))
                  {
                  }
               }
               this. if.contentLoaderInfo.addEventListener(Event.COMPLETE,this._-BT);
               if(_loc5_ && (_loc3_))
               {
               }
               return;
            }
            this. if.load(new URLRequest(_loc2_ + "?contentspotid=" + this._-7T));
            if(_loc4_ || (param1))
            {
               addChild(this. if);
            }
            return;
         }
         Security.allowDomain("server.cpmstar.com");
         var _loc3_:DisplayObjectContainer = parent;
         if(_loc4_ || (_loc2_))
         {
            this. if = new Loader();
            if(_loc4_ || (this))
            {
               this. if.contentLoaderInfo.addEventListener(Event.INIT,this._-BT);
               if(_loc4_ || (this))
               {
               }
            }
            this. if.contentLoaderInfo.addEventListener(Event.COMPLETE,this._-BT);
            if(_loc5_ && (_loc3_))
            {
            }
            return;
         }
         this. if.load(new URLRequest(_loc2_ + "?contentspotid=" + this._-7T));
         if(_loc4_ || (param1))
         {
            addChild(this. if);
         }
      }
      
      private function _-BT(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            dispatchEvent(param1);
         }
      }
   }
}
