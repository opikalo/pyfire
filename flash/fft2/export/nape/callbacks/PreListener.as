package nape.callbacks
{
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.util.ZPP_Flags;
   import flash._-2v;
   import zpp_nape.callbacks.ZPP_OptionType;
   
   public class PreListener extends Listener
   {
      
      public function PreListener(param1:InteractionType, param2:*, param3:*, param4:Function, param5:int = 0, param6:Boolean = false)
      {
         var _loc7_:* = 0;
         if(_-2v._-7E)
         {
            return;
         }
         super();
         zpp_inner_zn = new ZPP_InteractionListener(ZPP_OptionType.argument(param2),ZPP_OptionType.argument(param3),ZPP_Flags.id_CbEvent_PRE,ZPP_Flags.id_ListenerType_PRE);
         zpp_inner = zpp_inner_zn;
         zpp_inner.outer = this;
         zpp_inner_zn.outer_znp = this;
         zpp_inner.precedence = param5;
         zpp_inner_zn.pure = param6;
         zpp_inner_zn.handlerp = param4;
         _loc7_ = zpp_inner_zn.itype;
         if(_loc7_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc7_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc7_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc7_ == ZPP_Flags.id_InteractionType_ANY)
         {
            if(ZPP_Flags.InteractionType_ANY == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_ANY = new InteractionType();
               ZPP_Flags.internal = false;
            }
         }
         
         
         
         if(_loc7_ == ZPP_Flags.id_InteractionType_COLLISION)
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
                  _loc7_ = ZPP_Flags.id_InteractionType_COLLISION;
                  zpp_inner_zn.itype = _loc7_;
               }
               else
               {
                  _loc7_ = param1 == ZPP_Flags.InteractionType_SENSOR?ZPP_Flags.id_InteractionType_SENSOR:param1 == ZPP_Flags.InteractionType_FLUID?ZPP_Flags.id_InteractionType_FLUID:ZPP_Flags.id_InteractionType_ANY;
                  zpp_inner_zn.itype = _loc7_;
               }
            }
            _loc7_ = zpp_inner_zn.itype;
            if(_loc7_ == ZPP_Flags.id_InteractionType_COLLISION)
            {
               if(ZPP_Flags.InteractionType_COLLISION == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_COLLISION = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_COLLISION;
            }
            else if(_loc7_ == ZPP_Flags.id_InteractionType_SENSOR)
            {
               if(ZPP_Flags.InteractionType_SENSOR == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_SENSOR = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_SENSOR;
            }
            else if(_loc7_ == ZPP_Flags.id_InteractionType_FLUID)
            {
               if(ZPP_Flags.InteractionType_FLUID == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.InteractionType_FLUID = new InteractionType();
                  ZPP_Flags.internal = false;
               }
               ZPP_Flags.InteractionType_FLUID;
            }
            else if(_loc7_ == ZPP_Flags.id_InteractionType_ANY)
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
         if((_loc7_ == ZPP_Flags.id_InteractionType_SENSOR?ZPP_Flags.InteractionType_SENSOR:_loc7_ == ZPP_Flags.id_InteractionType_FLUID?ZPP_Flags.InteractionType_FLUID:_loc7_ == ZPP_Flags.id_InteractionType_ANY?ZPP_Flags.InteractionType_ANY:null) != param1)
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
               _loc7_ = ZPP_Flags.id_InteractionType_COLLISION;
               zpp_inner_zn.itype = _loc7_;
            }
            else
            {
               _loc7_ = param1 == ZPP_Flags.InteractionType_SENSOR?ZPP_Flags.id_InteractionType_SENSOR:param1 == ZPP_Flags.InteractionType_FLUID?ZPP_Flags.id_InteractionType_FLUID:ZPP_Flags.id_InteractionType_ANY;
               zpp_inner_zn.itype = _loc7_;
            }
         }
         _loc7_ = zpp_inner_zn.itype;
         if(_loc7_ == ZPP_Flags.id_InteractionType_COLLISION)
         {
            if(ZPP_Flags.InteractionType_COLLISION == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_COLLISION = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_COLLISION;
         }
         else if(_loc7_ == ZPP_Flags.id_InteractionType_SENSOR)
         {
            if(ZPP_Flags.InteractionType_SENSOR == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_SENSOR = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_SENSOR;
         }
         else if(_loc7_ == ZPP_Flags.id_InteractionType_FLUID)
         {
            if(ZPP_Flags.InteractionType_FLUID == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.InteractionType_FLUID = new InteractionType();
               ZPP_Flags.internal = false;
            }
            ZPP_Flags.InteractionType_FLUID;
         }
         else if(_loc7_ == ZPP_Flags.id_InteractionType_ANY)
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
      
      public function set pure(param1:Boolean) : Boolean
      {
         if(!param1)
         {
            zpp_inner_zn.wake();
         }
         zpp_inner_zn.pure = param1;
         return zpp_inner_zn.pure;
      }
      
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
         zpp_inner_zn.handlerp = param1;
         zpp_inner_zn.wake();
         return zpp_inner_zn.handlerp;
      }
      
      public function get pure() : Boolean
      {
         return zpp_inner_zn.pure;
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
         return zpp_inner_zn.handlerp;
      }
   }
}
