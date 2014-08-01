package _-Ku
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.Font;
   import flash.text.AntiAliasType;
   import flash.text.TextFieldAutoSize;
   import flash.display.Bitmap;
   import _-7e._-5U;
   import flash.display.Sprite;
   import each ._-JM;
   
   public class _-IL extends TextField
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(!_loc1_)
      {
         _-1f = _-CB;
         if(_loc2_)
         {
            FORMAT_CONCV2C_14 = new TextFormat("concv2c",14,16777215,true,false,null,null,null,"left");
            if(_loc2_)
            {
               FORMAT_CONCV2C_16 = new TextFormat("concv2c",16,16777215,true,false,null,null,null,"left");
               if(!(_loc1_ && (_-IL)))
               {
                  FORMAT_CONCV2C_19 = new TextFormat("concv2c",19,16777215,true,false,null,null,null,"left");
                  if(_loc1_)
                  {
                  }
               }
               _-4Q = new TextFormat("concv2c",30,16763904,true,false,null,null,null,"center");
               if(_loc1_)
               {
               }
               return;
            }
            FORMAT_CONCV2C_19_CENTER = new TextFormat("concv2c",19,16777215,true,false,null,null,null,"center");
            FORMAT_CONCV2C_30_CENTER = new TextFormat("concv2c",30,16777215,true,false,null,null,null,"center");
            FORMAT_CONCV2C_20_CENTER = new TextFormat("concv2c",20,16777215,true,false,null,null,null,"center");
            if(!(_loc1_ && (_loc1_)))
            {
               FORMAT_CONCV2C_14_RED = new TextFormat("concv2c",14,16711680,true,false,null,null,null,"left");
               FORMAT_CONCV2C_18 = new TextFormat("concv2c",18,16777215,true,false,null,null,null,"left");
            }
            return;
         }
         _-DZ = "type_main_menu";
         return;
      }
      if(!_loc1_)
      {
         _-4Q = new TextFormat("concv2c",30,16763904,true,false,null,null,null,"center");
         if(_loc1_)
         {
         }
         return;
      }
      }
      
      public function _-IL()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc1_))
         {
            super();
         }
      }
      
      private static var _-1f:Class;
      
      public static var FORMAT_CONCV2C_14:TextFormat;
      
      public static var FORMAT_CONCV2C_16:TextFormat;
      
      public static var FORMAT_CONCV2C_19:TextFormat;
      
      public static var FORMAT_CONCV2C_19_CENTER:TextFormat;
      
      public static var FORMAT_CONCV2C_30_CENTER:TextFormat;
      
      public static var FORMAT_CONCV2C_20_CENTER:TextFormat;
      
      public static var FORMAT_CONCV2C_14_RED:TextFormat;
      
      public static var FORMAT_CONCV2C_18:TextFormat;
      
      public static var _-Ei:TextFormat = new TextFormat("concv2c",20,16777215,true,false,null,null,null,"center");
      
      public static var _-4Q:TextFormat;
      
      public static var _-DZ:String = "type_main_menu";
      
      public static function _-H5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            Font.registerFont(_-1f);
         }
      }
      
      public static function _-7p(param1:String = "", param2:String = "Arial", param3:uint = 16777215, param4:int = 14, param5:String = "left", param6:* = false) : _-IL
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc7_:_-IL = new _-IL();
         var _loc8_:TextFormat = new TextFormat();
         _loc8_.font = param2;
         if(_loc9_)
         {
            _loc8_.bold = param6;
            _loc8_.size = param4;
            if(_loc9_ || (param2))
            {
               _loc8_.align = param5;
               if(_loc9_ || (_-IL))
               {
                  _loc8_.color = param3;
                  if(_loc10_)
                  {
                  }
                  _loc7_.antiAliasType = AntiAliasType.ADVANCED;
                  _loc7_.defaultTextFormat = _loc8_;
                  if(_loc9_)
                  {
                     _loc7_.htmlText = param1;
                     if(_loc10_ && (_-IL))
                     {
                     }
                  }
                  _loc7_.autoSize = TextFieldAutoSize.LEFT;
                  return _loc7_;
               }
               _loc7_.wordWrap = true;
               if(_loc9_ || (_-IL))
               {
                  _loc7_.autoSize = TextFieldAutoSize.LEFT;
               }
               return _loc7_;
            }
            _loc7_.embedFonts = true;
            if(!_loc10_)
            {
               _loc7_.antiAliasType = AntiAliasType.ADVANCED;
            }
            _loc7_.defaultTextFormat = _loc8_;
            if(_loc9_)
            {
               _loc7_.htmlText = param1;
               if(_loc10_ && (_-IL))
               {
               }
            }
            _loc7_.autoSize = TextFieldAutoSize.LEFT;
            return _loc7_;
         }
         _loc7_.selectable = false;
         if(!(_loc10_ && (param1)))
         {
            _loc7_.multiline = true;
            if(!_loc10_)
            {
               _loc7_.wordWrap = true;
               if(_loc9_ || (_-IL))
               {
               }
            }
            _loc7_.autoSize = TextFieldAutoSize.LEFT;
         }
         return _loc7_;
      }
      
      public static function html(param1:String = "", param2:String = "ffffff", param3:int = 14) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-2g(param1:String = "", param2:TextFormat = null, param3:int = -1) : _-IL
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         new _-IL().embedFonts = true;
         _loc4_.antiAliasType = AntiAliasType.ADVANCED;
         if(!(_loc6_ && (param2)))
         {
            _loc4_.defaultTextFormat = param2;
            if(param3 > -1)
            {
               if(_loc5_ || (_-IL))
               {
               }
               _loc4_.height = _loc4_.textHeight + 5;
               return _loc4_;
            }
            _loc4_.htmlText = param1;
            if(!(_loc6_ && (param1)))
            {
               _loc4_.selectable = false;
               _loc4_.width = _loc4_.textWidth + 5;
               if(_loc5_ || (_-IL))
               {
               }
               return _loc4_;
            }
            _loc4_.height = _loc4_.textHeight + 5;
            return _loc4_;
         }
         _loc4_.textColor = param3;
         _loc4_.htmlText = param1;
         if(!(_loc6_ && (param1)))
         {
            _loc4_.selectable = false;
            _loc4_.width = _loc4_.textWidth + 5;
            if(_loc5_ || (_-IL))
            {
            }
            return _loc4_;
         }
         _loc4_.height = _loc4_.textHeight + 5;
         return _loc4_;
      }
      
      public static function _-HK(param1:_-IL, param2:Array, param3:Array) : Bitmap
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:Number = param1.x;
         var _loc5_:Number = param1.y;
         var _loc8_:Sprite = new Sprite();
         _loc8_.addChild(_loc7_);
         if(_loc11_ || (param1))
         {
            _loc8_.addChild(param1);
            if(!(_loc10_ && (param2)))
            {
               param1.x = 0;
               if(_loc11_ || (param1))
               {
               }
               _loc7_.mask = param1;
               _loc9_ = _-JM._-13(_loc8_);
               if(_loc11_ || (param1))
               {
                  if(_loc6_ != null)
                  {
                     if(!_loc10_)
                     {
                        _loc6_.addChild(_loc9_);
                        if(_loc10_)
                        {
                        }
                     }
                     _loc9_.x = _loc4_;
                     if(_loc10_)
                     {
                     }
                  }
                  return _loc9_;
               }
               _loc9_.y = _loc5_;
               return _loc9_;
            }
         }
         param1.y = 0;
         if(_loc11_ || (_-IL))
         {
            _loc7_.mask = param1;
         }
         var _loc9_:Bitmap = _-JM._-13(_loc8_);
         if(_loc11_ || (param1))
         {
            if(_loc6_ != null)
            {
               if(!_loc10_)
               {
                  _loc6_.addChild(_loc9_);
                  if(_loc10_)
                  {
                  }
               }
               _loc9_.x = _loc4_;
               if(_loc10_)
               {
               }
            }
            return _loc9_;
         }
         _loc9_.y = _loc5_;
         return _loc9_;
      }
   }
}
