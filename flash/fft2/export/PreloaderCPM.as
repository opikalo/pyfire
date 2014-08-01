package
{
   import flash.display.MovieClip;
   import fla.screens.scr_Preloader;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import CPMStar.*;
   import fla.logo.mc_Logo;
   import flash.display.Sprite;
   import flash.events.ProgressEvent;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import flash.utils.getDefinitionByName;
   import flash.display.DisplayObject;
   import flash.display.StageScaleMode;
   import flash.display.StageAlign;
   import _-Ea._-AH;
   
   public dynamic class PreloaderCPM extends MovieClip
   {
      
      public function PreloaderCPM()
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private const VERSION:String = "CPMStar";
      
      private var _-Lo:scr_Preloader;
      
      private var logo:MovieClip;
      
      private var _-LD:uint;
      
      private var _-Lq:CPMContainer;
      
      private function _-E9(param1:Number) : void
      {
      }
      
      private function _-HA(param1:Number, param2:Number) : void
      {
      }
      
      private function onStart() : void
      {
      }
      
      private function _-F-(param1:MouseEvent = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-AJ(param1:MouseEvent = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-Er() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function ioError(param1:IOErrorEvent) : void
      {
      }
      
      private function progress(param1:ProgressEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (this))
         {
            this._-Lo._-Bw.mc_bar.gotoAndStop(int(100 * param1.bytesLoaded / param1.bytesTotal));
            if(_loc3_ || (_loc3_))
            {
               if(param1.bytesLoaded == param1.bytesTotal)
               {
                  if(_loc3_ || (_loc2_))
                  {
                     this._-8r();
                  }
               }
            }
         }
      }
      
      private function _-8r(param1:Event = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function showButton(param1:Event = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-17(param1:Event = null) : void
      {
         var _loc4_:* = false;
         if(_loc3_)
         {
            this.logo.removeEventListener(MouseEvent.CLICK,get ._-K0);
            if(_loc3_ || (param1))
            {
               this._-Lo._-1F.removeEventListener(MouseEvent.CLICK,this._-17);
               if(_loc4_ && (_loc3_))
               {
               }
            }
            removeChild(this._-Lo);
            if(_loc3_)
            {
               this._-Lo = null;
            }
         }
         if(_loc3_ || (this))
         {
            addChild(new _loc2_() as DisplayObject);
         }
      }
   }
}
