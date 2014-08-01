package flash
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.display.Stage;
   import flash.filters.GlowFilter;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getQualifiedClassName;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public dynamic class _-2v extends MovieClip
   {
      
      public function _-2v()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc1_)))
         {
            if(_-2v._-7E)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
            return;
         }
         super();
      }
      
      public static var _-GI:TextField;
      
      public static var _-2X:Array;
      
      public static var _-G9:Error;
      
      public static var _-7E:Boolean;
      
      public static function _-IF(param1:Object) : String
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:* = null;
         if(_loc6_)
         {
            if(param1.params == null)
            {
               if(_loc6_ || (_loc3_))
               {
               }
            }
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < (_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(_loc6_)
               {
                  _loc3_++;
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc2_.push(_-2v._-3p(_loc5_,""));
            }
            if(_loc6_ || (_-2v))
            {
            }
            return param1.tag + "(";
         }
         return param1.tag;
      }
      
      public static function _-Ju(param1:*, param2:*) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-Dh() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_-2v._-GI == null)
         {
            if(_loc1_ || (_loc1_))
            {
               return;
            }
            _-2v._-GI = null;
            if(!(_loc2_ && (_loc2_)))
            {
               _-2v._-2X = null;
            }
         }
         else
         {
            _-2v._-GI.parent.removeChild(_-2v._-GI);
            if(_loc1_ || (_loc1_))
            {
               _-2v._-GI = null;
               if(!(_loc2_ && (_loc2_)))
               {
                  _-2v._-2X = null;
               }
            }
         }
      }
      
      public static function _-Ie(param1:uint) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:TextField = _-2v._-1Q();
         if(!(_loc3_ && (param1)))
         {
            _loc2_.textColor = param1;
            if(_loc3_)
            {
            }
            return;
         }
         _loc2_.filters = [];
      }
      
      public static function _-1Q() : TextField
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-8o(param1:*, param2:Object) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-3p(param1:*, param2:String) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-0z(param1:String) : String
      {
         return param1;
      }
      
      public function start() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function init() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _-2v._-G9 = new Error();
         throw "assert";
      }
      
      public function _-94(param1:*) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            _-Ky.current.removeEventListener(Event.ADDED_TO_STAGE,_-94);
            if(!_loc2_)
            {
               start();
            }
         }
      }
   }
}
