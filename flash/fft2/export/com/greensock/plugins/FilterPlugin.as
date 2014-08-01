package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.filters.BitmapFilter;
   
   public class FilterPlugin extends TweenPlugin
   {
      
      public function FilterPlugin(param1:String = "", param2:Number = 0)
      {
         super(param1,param2);
      }
      
      public static const API:Number = 2;
      
      protected var _remove:Boolean;
      
      protected function _initFilter(param1:*, param2:Object, param3:TweenLite, param4:Class, param5:BitmapFilter, param6:Array) : Boolean
      {
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:HexColorsPlugin = null;
         _target = param1;
         _tween = param3;
         _type = param4;
         var _loc7_:Array = _target.filters;
         var _loc11_:Object = param2 is BitmapFilter?{}:param2;
         if(_loc11_.index != null)
         {
            _index = _loc11_.index;
         }
         else
         {
            _index = _loc7_.length;
            do
            {
            }
            while(--_index > -1 && !(_loc7_[_index] is _type));
            
         }
         if(_index < 0 || _loc7_[_index] == null || _loc11_.addFilter == true)
         {
            _index = _loc7_.length;
            _loc7_[_index] = param5;
            _target.filters = _loc7_;
         }
         _filter = _loc7_[_index];
         _remove = _loc11_.remove == true;
         _loc9_ = param6.length;
         while(--_loc9_ > -1)
         {
            _loc8_ = param6[_loc9_];
            if(_loc8_ in param2 && !(_filter[_loc8_] == param2[_loc8_]))
            {
               if(_loc8_ == "color" || _loc8_ == "highlightColor" || _loc8_ == "shadowColor")
               {
                  _loc10_ = new HexColorsPlugin();
                  _loc10_._initColor(_filter,_loc8_,param2[_loc8_]);
                  _addTween(_loc10_,"setRatio",0,1,_propName);
               }
               else if(_loc8_ == "quality" || _loc8_ == "inner" || _loc8_ == "knockout" || _loc8_ == "hideObject")
               {
                  _filter[_loc8_] = param2[_loc8_];
               }
               else
               {
                  _addTween(_filter,_loc8_,_filter[_loc8_],param2[_loc8_],_propName);
               }
               
            }
         }
         return true;
      }
      
      override public function setRatio(param1:Number) : void
      {
         super.setRatio(param1);
         var _loc2_:Array = _target.filters;
         if(!(_loc2_[_index] is _type))
         {
            _index = _loc2_.length;
            do
            {
            }
            while(--_index > -1 && !(_loc2_[_index] is _type));
            
            if(_index == -1)
            {
               _index = _loc2_.length;
            }
         }
         if(param1 == 1 && (_remove) && _tween._time == _tween._duration)
         {
            if(_index < _loc2_.length)
            {
               _loc2_.splice(_index,1);
            }
         }
         else
         {
            _loc2_[_index] = _filter;
         }
         _target.filters = _loc2_;
      }
      
      private var _tween:TweenLite;
      
      protected var _target:Object;
      
      protected var _index:int;
      
      protected var _filter:BitmapFilter;
      
      protected var _type:Class;
   }
}
