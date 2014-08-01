package nape.callbacks
{
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.util.ZPP_Flags;
   import flash._-2v;
   import zpp_nape.callbacks.ZPP_OptionType;
   
   public class InteractionListener extends Listener
   {
      
      public function InteractionListener(param1:CbEvent, param2:InteractionType, param3:*, param4:*, param5:Function, param6:int = 0)
      {
         var _loc8_:* = 0;
         if(_-2v._-7E)
         {
            return;
         }
         super();
         var _loc7_:* = -1;
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(param1 == ZPP_Flags.CbEvent_BEGIN)
         {
            _loc7_ = ZPP_Flags.id_CbEvent_BEGIN;
         }
         else
         {
            if(ZPP_Flags.CbEvent_END == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.CbEvent_END = new CbEvent();
               ZPP_Flags.internal = false;
            }
            if(param1 == ZPP_Flags.CbEvent_END)
            {
               _loc7_ = ZPP_Flags.id_CbEvent_END;
            }
            else
            {
               if(ZPP_Flags.CbEvent_ONGOING == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.CbEvent_ONGOING = new CbEvent();
                  ZPP_Flags.internal = false;
               }
               if(param1 == ZPP_Flags.CbEvent_ONGOING)
               {
                  _loc7_ = ZPP_Flags.id_CbEvent_ONGOING;
               }
            }
         }
         zpp_inner_zn = new ZPP_InteractionListener(ZPP_OptionType.argument(param3),ZPP_OptionType.argument(param4),_loc7_,ZPP_Flags.id_ListenerType_INTERACTION);
         zpp_inner = zpp_inner_zn;
         zpp_inner.outer = this;
         zpp_inner_zn.outer_zni = this;
         zpp_inner.precedence = param6;
         zpp_inner_zn.handleri = param5;
         _loc8_ = zpp_inner_zn.itype;
         if(_loc8_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc8_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc8_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc8_ == ZPP_Flags.id_InteractionType_ANY)
         {
            if(ZPP_Flags.InteractionType_ANY == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_ANY = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         
         
         
         if(_loc8_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION != param2)
            {
               if(ZPP_Flags.InteractionType_COLLISION == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_COLLISION = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               if(param2 != ZPP_Flags.InteractionType_COLLISION)
               {
                  if(ZPP_Flags.InteractionType_SENSOR == null)
                  {
                     ZPP_Flags.internal = true;
                     ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                     ZPP_Flags.internal = false;
                  }
                  if(param2 != ZPP_Flags.InteractionType_SENSOR)
                  {
                     if(ZPP_Flags.InteractionType_FLUID == null)
                     {
                        ZPP_Flags.internal = true;
                        ZPP_Flags.InteractionType_FLUID = new InteractionType();
                        ZPP_Flags.internal = false;
                     }
                  }
               }
               if(param2 == ZPP_Flags.InteractionType_COLLISION)
               {
                  _loc8_ = ZPP_Flags.id_InteractionType_COLLISION;
                  zpp_inner_zn.itype = _loc8_;
               }
               else
               {
                  _loc8_ = param2 == ZPP_Flags.InteractionType_SENSOR?ZPP_Flags.id_InteractionType_SENSOR:param2 == ZPP_Flags.InteractionType_FLUID?ZPP_Flags.id_InteractionType_FLUID:ZPP_Flags.id_InteractionType_ANY;
                  zpp_inner_zn.itype = _loc8_;
               }
            }
            _loc8_ = zpp_inner_zn.itype;
            if(_loc8_ == ZPP_Flags.id_InteractionType_COLLISION)
            {
               if(ZPP_Flags.InteractionType_COLLISION == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_COLLISION = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_COLLISION;
            }
            else if(_loc8_ == ZPP_Flags.id_InteractionType_SENSOR)
            {
               if(ZPP_Flags.InteractionType_SENSOR == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_SENSOR;
            }
            else if(_loc8_ == ZPP_Flags.id_InteractionType_FLUID)
            {
               if(ZPP_Flags.InteractionType_FLUID == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_FLUID = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_FLUID;
            }
            else if(_loc8_ == ZPP_Flags.id_InteractionType_ANY)
            {
               if(ZPP_Flags.InteractionType_ANY == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_ANY = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_ANY;
            }
            else
            {
               null;
            }
            
            
            
            return;
         }
         if((_loc8_ == ZPP_Flags.id_InteractionType_SENSOR?ZPP_Flags.InteractionType_SENSOR:_loc8_ == ZPP_Flags.id_InteractionType_FLUID?ZPP_Flags.InteractionType_FLUID:_loc8_ == ZPP_Flags.id_InteractionType_ANY?ZPP_Flags.InteractionType_ANY:null) != param2)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
            if(param2 != ZPP_Flags.InteractionType_COLLISION)
            {
               if(ZPP_Flags.InteractionType_SENSOR == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               if(param2 != ZPP_Flags.InteractionType_SENSOR)
               {
                  if(ZPP_Flags.InteractionType_FLUID == null)
                  {
                     ZPP_Flags.internal = true;
                     ZPP_Flags.InteractionType_FLUID = new InteractionType();
                     ZPP_Flags.internal = false;
                  }
               }
            }
            if(param2 == ZPP_Flags.InteractionType_COLLISION)
            {
               _loc8_ = ZPP_Flags.id_InteractionType_COLLISION;
               zpp_inner_zn.itype = _loc8_;
            }
            else
            {
               _loc8_ = param2 == ZPP_Flags.InteractionType_SENSOR?ZPP_Flags.id_InteractionType_SENSOR:param2 == ZPP_Flags.InteractionType_FLUID?ZPP_Flags.id_InteractionType_FLUID:ZPP_Flags.id_InteractionType_ANY;
               zpp_inner_zn.itype = _loc8_;
            }
         }
         _loc8_ = zpp_inner_zn.itype;
         if(_loc8_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_COLLISION;
         }
         else if(_loc8_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_SENSOR;
         }
         else if(_loc8_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_FLUID;
         }
         else if(_loc8_ == ZPP_Flags.id_InteractionType_ANY)
         {
            if(ZPP_Flags.InteractionType_ANY == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_ANY = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_ANY;
         }
         else
         {
            null;
         }
         
         
         
      }
      
      public var zpp_inner_zn:ZPP_InteractionListener;
      
      public function set options2(param1:OptionType) : OptionType
      {
         zpp_inner_zn.options2.set(param1.zpp_inner);
         return zpp_inner_zn.options2.outer;
      }
      
      public function set options1(param1:OptionType) : OptionType
      {
         zpp_inner_zn.options1.set(param1.zpp_inner);
         return zpp_inner_zn.options1.outer;
      }
      
      public function set interactionType(param1:InteractionType) : InteractionType
      {
         var _loc2_:* = 0;
         _loc2_ = zpp_inner_zn.itype;
         if(_loc2_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_InteractionType_ANY)
         {
            if(ZPP_Flags.InteractionType_ANY == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_ANY = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         
         
         
         if(_loc2_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION != param1)
            {
               if(ZPP_Flags.InteractionType_COLLISION == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_COLLISION = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               if(param1 != ZPP_Flags.InteractionType_COLLISION)
               {
                  if(ZPP_Flags.InteractionType_SENSOR == null)
                  {
                     ZPP_Flags.internal = true;
                     ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                     ZPP_Flags.internal = false;
                  }
                  if(param1 != ZPP_Flags.InteractionType_SENSOR)
                  {
                     if(ZPP_Flags.InteractionType_FLUID == null)
                     {
                        ZPP_Flags.internal = true;
                        ZPP_Flags.InteractionType_FLUID = new InteractionType();
                        ZPP_Flags.internal = false;
                     }
                  }
               }
               if(param1 == ZPP_Flags.InteractionType_COLLISION)
               {
                  _loc2_ = ZPP_Flags.id_InteractionType_COLLISION;
                  zpp_inner_zn.itype = _loc2_;
               }
               else
               {
                  _loc2_ = param1 == ZPP_Flags.InteractionType_SENSOR?ZPP_Flags.id_InteractionType_SENSOR:param1 == ZPP_Flags.InteractionType_FLUID?ZPP_Flags.id_InteractionType_FLUID:ZPP_Flags.id_InteractionType_ANY;
                  zpp_inner_zn.itype = _loc2_;
               }
            }
            _loc2_ = zpp_inner_zn.itype;
            if(_loc2_ == ZPP_Flags.id_InteractionType_COLLISION)
            {
               if(ZPP_Flags.InteractionType_COLLISION == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_COLLISION = new InteractionType();
                  ZPP_Flags.internal = false;
               }
            }
            else if(_loc2_ == ZPP_Flags.id_InteractionType_SENSOR)
            {
               if(ZPP_Flags.InteractionType_SENSOR == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                  ZPP_Flags.internal = false;
               }
            }
            else if(_loc2_ == ZPP_Flags.id_InteractionType_FLUID)
            {
               if(ZPP_Flags.InteractionType_FLUID == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_FLUID = new InteractionType();
                  ZPP_Flags.internal = false;
               }
            }
            else if(_loc2_ == ZPP_Flags.id_InteractionType_ANY)
            {
               if(ZPP_Flags.InteractionType_ANY == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_ANY = new InteractionType();
                  ZPP_Flags.internal = false;
               }
            }
            
            
            
            if(_loc2_ == ZPP_Flags.id_InteractionType_COLLISION)
            {
               return ZPP_Flags.InteractionType_COLLISION;
            }
            return _loc2_ == ZPP_Flags.id_InteractionType_SENSOR?ZPP_Flags.InteractionType_SENSOR:_loc2_ == ZPP_Flags.id_InteractionType_FLUID?ZPP_Flags.InteractionType_FLUID:_loc2_ == ZPP_Flags.id_InteractionType_ANY?ZPP_Flags.InteractionType_ANY:null;
         }
         if((_loc2_ == ZPP_Flags.id_InteractionType_SENSOR?ZPP_Flags.InteractionType_SENSOR:_loc2_ == ZPP_Flags.id_InteractionType_FLUID?ZPP_Flags.InteractionType_FLUID:_loc2_ == ZPP_Flags.id_InteractionType_ANY?ZPP_Flags.InteractionType_ANY:null) != param1)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
            if(param1 != ZPP_Flags.InteractionType_COLLISION)
            {
               if(ZPP_Flags.InteractionType_SENSOR == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               if(param1 != ZPP_Flags.InteractionType_SENSOR)
               {
                  if(ZPP_Flags.InteractionType_FLUID == null)
                  {
                     ZPP_Flags.internal = true;
                     ZPP_Flags.InteractionType_FLUID = new InteractionType();
                     ZPP_Flags.internal = false;
                  }
               }
            }
            if(param1 == ZPP_Flags.InteractionType_COLLISION)
            {
               _loc2_ = ZPP_Flags.id_InteractionType_COLLISION;
               zpp_inner_zn.itype = _loc2_;
            }
            else
            {
               _loc2_ = param1 == ZPP_Flags.InteractionType_SENSOR?ZPP_Flags.id_InteractionType_SENSOR:param1 == ZPP_Flags.InteractionType_FLUID?ZPP_Flags.id_InteractionType_FLUID:ZPP_Flags.id_InteractionType_ANY;
               zpp_inner_zn.itype = _loc2_;
            }
         }
         _loc2_ = zpp_inner_zn.itype;
         if(_loc2_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_InteractionType_ANY)
         {
            if(ZPP_Flags.InteractionType_ANY == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_ANY = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         
         
         
         if(_loc2_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            return ZPP_Flags.InteractionType_COLLISION;
         }
         return _loc2_ == ZPP_Flags.id_InteractionType_SENSOR?ZPP_Flags.InteractionType_SENSOR:_loc2_ == ZPP_Flags.id_InteractionType_FLUID?ZPP_Flags.InteractionType_FLUID:_loc2_ == ZPP_Flags.id_InteractionType_ANY?ZPP_Flags.InteractionType_ANY:null;
      }
      
      public function set handler(param1:Function) : Function
      {
         zpp_inner_zn.handleri = param1;
         return zpp_inner_zn.handleri;
      }
      
      public function get options2() : OptionType
      {
         return zpp_inner_zn.options2.outer;
      }
      
      public function get options1() : OptionType
      {
         return zpp_inner_zn.options1.outer;
      }
      
      public function get interactionType() : InteractionType
      {
         var _loc1_:int = zpp_inner_zn.itype;
         if(_loc1_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc1_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc1_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc1_ == ZPP_Flags.id_InteractionType_ANY)
         {
            if(ZPP_Flags.InteractionType_ANY == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_ANY = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         
         
         
         if(_loc1_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            return ZPP_Flags.InteractionType_COLLISION;
         }
         return _loc1_ == ZPP_Flags.id_InteractionType_SENSOR?ZPP_Flags.InteractionType_SENSOR:_loc1_ == ZPP_Flags.id_InteractionType_FLUID?ZPP_Flags.InteractionType_FLUID:_loc1_ == ZPP_Flags.id_InteractionType_ANY?ZPP_Flags.InteractionType_ANY:null;
      }
      
      public function get handler() : Function
      {
         return zpp_inner_zn.handleri;
      }
   }
}
