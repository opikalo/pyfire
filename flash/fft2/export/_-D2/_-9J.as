package _-D2
{
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import each ._-JM;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import nape.geom.*;
   import nape.phys.*;
   import nape.shape.*;
   import nape.dynamics.*;
   import nape.space.*;
   import nape.util.*;
   import flash.geom.Point;
   
   public class _-9J extends Object
   {
      
      public function _-9J()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function _-KX(param1:DisplayObject, param2:Rectangle, param3:Number = 1, param4:Material = null) : Body
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-2n(param1:DisplayObject, param2:uint = 0, param3:Vec2 = null, param4:InteractionFilter = null, param5:Material = null) : Body
      {
         var _loc10_:* = true;
         if(!_loc9_)
         {
            if(param5 == null)
            {
            }
            _loc6_ = param1.getRect(param1);
            _loc8_ = _-9J._-M(_loc7_.bitmapData,param2,param3,param4,param5);
            if(_loc10_)
            {
               _loc7_.bitmapData.dispose();
            }
            return _loc8_;
         }
         var param5:Material = Material.wood();
         var _loc6_:Rectangle = param1.getRect(param1);
         var _loc8_:Body = _-9J._-M(_loc7_.bitmapData,param2,param3,param4,param5);
         if(_loc10_)
         {
            _loc7_.bitmapData.dispose();
         }
         return _loc8_;
      }
      
      public static function _-M(param1:BitmapData, param2:uint = 0, param3:Vec2 = null, param4:InteractionFilter = null, param5:Material = null) : Body
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-64(param1:Array, param2:InteractionFilter = null, param3:Material = null) : Body
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = 0;
         loop0:
         while(true)
         {
            while(_loc5_ < param1.length)
            {
               _loc4_.push(new Vec2(param1[_loc5_],param1[_loc5_ + 1]));
               if(_loc7_)
               {
                  if(_loc7_)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  _loc5_ = _loc5_;
                  if(!(_loc8_ && (param3)))
                  {
                     continue loop0;
                  }
                  break;
               }
               break;
            }
            _loc6_ = _-LI(_loc4_,new Point(0,0),param2,param3);
            return _loc6_;
         }
      }
      
      public static function _-LI(param1:Array, param2:Point = null, param3:InteractionFilter = null, param4:Material = null) : Body
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
