package nape.callbacks
{
   import zpp_nape.callbacks.ZPP_Listener;
   import zpp_nape.callbacks.ZPP_BodyListener;
   import zpp_nape.callbacks.ZPP_ConstraintListener;
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.util.ZPP_Flags;
   import nape.space.Space;
   import zpp_nape.space.ZPP_Space;
   
   public class Listener extends Object
   {
      
      public function Listener()
      {
      }
      
      public var zpp_inner:ZPP_Listener;
      
      public function toString() : String
      {
         var _loc2_:* = null as ZPP_BodyListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as ZPP_InteractionListener;
         var _loc5_:* = null as String;
         var _loc6_:* = 0;
         var _loc1_:String = ["BEGIN","END","WAKE","SLEEP","BREAK","PRE","ONGOING"][zpp_inner.event];
         if(zpp_inner.type == ZPP_Flags.id_ListenerType_BODY)
         {
            _loc2_ = zpp_inner.body;
            return "BodyListener{" + _loc1_ + "::" + _-C2.string(_loc2_.outer_zn.zpp_inner_zn.options.outer) + "}";
         }
         if(zpp_inner.type == ZPP_Flags.id_ListenerType_CONSTRAINT)
         {
            _loc3_ = zpp_inner.constraint;
            return "ConstraintListener{" + _loc1_ + "::" + _-C2.string(_loc3_.outer_zn.zpp_inner_zn.options.outer) + "}";
         }
         _loc4_ = zpp_inner.interaction;
         _loc6_ = _loc4_.itype;
         _loc5_ = _loc6_ == ZPP_Flags.id_InteractionType_COLLISION?"COLLISION":_loc6_ == ZPP_Flags.id_InteractionType_SENSOR?"SENSOR":_loc6_ == ZPP_Flags.id_InteractionType_FLUID?"FLUID":"ALL";
         return (zpp_inner.type == ZPP_Flags.id_ListenerType_INTERACTION?"InteractionListener{" + _loc1_ + "#" + _loc5_ + "::" + _-C2.string(_loc4_.outer_zni.zpp_inner_zn.options1.outer) + ":" + _-C2.string(_loc4_.outer_zni.zpp_inner_zn.options2.outer) + "}":"PreListener{" + _loc5_ + "::" + _-C2.string(_loc4_.outer_znp.zpp_inner_zn.options1.outer) + ":" + _-C2.string(_loc4_.outer_znp.zpp_inner_zn.options2.outer) + "}") + " precedence=" + zpp_inner.precedence;
      }
      
      public function set space(param1:Space) : Space
      {
         if((zpp_inner.space == null?null:zpp_inner.space.outer) != param1)
         {
            if(zpp_inner.space != null)
            {
               zpp_inner.space.outer.zpp_inner.wrap_listeners.remove(this);
            }
            if(param1 != null)
            {
               param1.zpp_inner.wrap_listeners.add(this);
            }
            else
            {
               zpp_inner.space = null;
            }
         }
         return zpp_inner.space == null?null:zpp_inner.space.outer;
      }
      
      public function set precedence(param1:int) : int
      {
         if(zpp_inner.precedence != param1)
         {
            zpp_inner.precedence = param1;
            zpp_inner.invalidate_precedence();
         }
         return zpp_inner.precedence;
      }
      
      public function set event(param1:CbEvent) : CbEvent
      {
         var _loc2_:* = 0;
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_END == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_END = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_WAKE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_WAKE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_SLEEP == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_SLEEP = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_BREAK == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BREAK = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_PRE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_ONGOING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_ONGOING = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if([ZPP_Flags.CbEvent_BEGIN,ZPP_Flags.CbEvent_END,ZPP_Flags.CbEvent_WAKE,ZPP_Flags.CbEvent_SLEEP,ZPP_Flags.CbEvent_BREAK,ZPP_Flags.CbEvent_PRE,ZPP_Flags.CbEvent_ONGOING][zpp_inner.event] != param1)
         {
            if(ZPP_Flags.CbEvent_BEGIN == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.CbEvent_BEGIN = new CbEvent();
               ZPP_Flags.internal = false;
            }
            if(param1 != ZPP_Flags.CbEvent_BEGIN)
            {
               if(ZPP_Flags.CbEvent_ONGOING == null)
               {
                  ZPP_Flags.internal = true;
                  ZPP_Flags.CbEvent_ONGOING = new CbEvent();
                  ZPP_Flags.internal = false;
               }
               if(param1 != ZPP_Flags.CbEvent_ONGOING)
               {
                  if(ZPP_Flags.CbEvent_END == null)
                  {
                     ZPP_Flags.internal = true;
                     ZPP_Flags.CbEvent_END = new CbEvent();
                     ZPP_Flags.internal = false;
                  }
                  if(param1 != ZPP_Flags.CbEvent_END)
                  {
                     if(ZPP_Flags.CbEvent_SLEEP == null)
                     {
                        ZPP_Flags.internal = true;
                        ZPP_Flags.CbEvent_SLEEP = new CbEvent();
                        ZPP_Flags.internal = false;
                     }
                     if(param1 != ZPP_Flags.CbEvent_SLEEP)
                     {
                        if(ZPP_Flags.CbEvent_WAKE == null)
                        {
                           ZPP_Flags.internal = true;
                           ZPP_Flags.CbEvent_WAKE = new CbEvent();
                           ZPP_Flags.internal = false;
                        }
                        if(param1 != ZPP_Flags.CbEvent_WAKE)
                        {
                           if(ZPP_Flags.CbEvent_PRE == null)
                           {
                              ZPP_Flags.internal = true;
                              ZPP_Flags.CbEvent_PRE = new CbEvent();
                              ZPP_Flags.internal = false;
                           }
                        }
                     }
                  }
               }
            }
            if(param1 == ZPP_Flags.CbEvent_BEGIN)
            {
               _loc2_ = ZPP_Flags.id_CbEvent_BEGIN;
               zpp_inner.swapEvent(_loc2_);
            }
            else
            {
               _loc2_ = param1 == ZPP_Flags.CbEvent_ONGOING?ZPP_Flags.id_CbEvent_ONGOING:param1 == ZPP_Flags.CbEvent_END?ZPP_Flags.id_CbEvent_END:param1 == ZPP_Flags.CbEvent_SLEEP?ZPP_Flags.id_CbEvent_SLEEP:param1 == ZPP_Flags.CbEvent_WAKE?ZPP_Flags.id_CbEvent_WAKE:param1 == ZPP_Flags.CbEvent_PRE?ZPP_Flags.id_CbEvent_PRE:ZPP_Flags.id_CbEvent_BREAK;
               zpp_inner.swapEvent(_loc2_);
            }
         }
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_END == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_END = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_WAKE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_WAKE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_SLEEP == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_SLEEP = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_BREAK == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BREAK = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_PRE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_ONGOING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_ONGOING = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return [ZPP_Flags.CbEvent_BEGIN,ZPP_Flags.CbEvent_END,ZPP_Flags.CbEvent_WAKE,ZPP_Flags.CbEvent_SLEEP,ZPP_Flags.CbEvent_BREAK,ZPP_Flags.CbEvent_PRE,ZPP_Flags.CbEvent_ONGOING][zpp_inner.event];
      }
      
      public function get type() : ListenerType
      {
         if(ZPP_Flags.ListenerType_BODY == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_BODY = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.ListenerType_CONSTRAINT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_CONSTRAINT = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.ListenerType_INTERACTION == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_INTERACTION = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.ListenerType_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_PRE = new ListenerType();
            ZPP_Flags.internal = false;
         }
         return [ZPP_Flags.ListenerType_BODY,ZPP_Flags.ListenerType_CONSTRAINT,ZPP_Flags.ListenerType_INTERACTION,ZPP_Flags.ListenerType_PRE][zpp_inner.type];
      }
      
      public function get space() : Space
      {
         return zpp_inner.space == null?null:zpp_inner.space.outer;
      }
      
      public function get precedence() : int
      {
         return zpp_inner.precedence;
      }
      
      public function get event() : CbEvent
      {
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_END == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_END = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_WAKE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_WAKE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_SLEEP == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_SLEEP = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_BREAK == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BREAK = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_PRE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_ONGOING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_ONGOING = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return [ZPP_Flags.CbEvent_BEGIN,ZPP_Flags.CbEvent_END,ZPP_Flags.CbEvent_WAKE,ZPP_Flags.CbEvent_SLEEP,ZPP_Flags.CbEvent_BREAK,ZPP_Flags.CbEvent_PRE,ZPP_Flags.CbEvent_ONGOING][zpp_inner.event];
      }
   }
}
