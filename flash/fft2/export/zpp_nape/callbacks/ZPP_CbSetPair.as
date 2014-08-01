package zpp_nape.callbacks
{
   import zpp_nape.util.ZNPList_ZPP_InteractionListener;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import flash._-2v;
   
   public class ZPP_CbSetPair extends Object
   {
      
      public function ZPP_CbSetPair()
      {
         if(_-2v._-7E)
         {
            return;
         }
         listeners = new ZNPList_ZPP_InteractionListener();
      }
      
      public static var zpp_pool:ZPP_CbSetPair;
      
      public static function get(param1:ZPP_CbSet, param2:ZPP_CbSet) : ZPP_CbSetPair
      {
         var _loc3_:* = null as ZPP_CbSetPair;
         if(ZPP_CbSetPair.zpp_pool == null)
         {
            _loc3_ = new ZPP_CbSetPair();
         }
         else
         {
            _loc3_ = ZPP_CbSetPair.zpp_pool;
            ZPP_CbSetPair.zpp_pool = _loc3_.next;
            _loc3_.next = null;
         }
         _loc3_.zip_listeners = true;
         if(ZPP_CbSet.setlt(param1,param2))
         {
            _loc3_.a = param1;
            _loc3_.b = param2;
         }
         else
         {
            _loc3_.a = param2;
            _loc3_.b = param1;
         }
         return _loc3_;
      }
      
      public static function setlt(param1:ZPP_CbSetPair, param2:ZPP_CbSetPair) : Boolean
      {
         if(!ZPP_CbSet.setlt(param1.a,param2.a))
         {
            true;
            if(param1.a == param2.a)
            {
               false;
            }
         }
         return true;
      }
      
      public var zip_listeners:Boolean;
      
      public var next:ZPP_CbSetPair;
      
      public var listeners:ZNPList_ZPP_InteractionListener;
      
      public var b:ZPP_CbSet;
      
      public var a:ZPP_CbSet;
      
      public function __validate() : void
      {
         var _loc3_:* = null as ZPP_InteractionListener;
         var _loc4_:* = null as ZPP_InteractionListener;
         var _loc5_:* = null as ZPP_OptionType;
         var _loc6_:* = null as ZNPList_ZPP_CbType;
         listeners.clear();
         var _loc1_:ZNPNode_ZPP_InteractionListener = a.listeners.head;
         var _loc2_:ZNPNode_ZPP_InteractionListener = b.listeners.head;
         while(true)
         {
            if(_loc1_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc3_ = _loc1_.elt;
            _loc4_ = _loc2_.elt;
            if(_loc3_ == _loc4_)
            {
               _loc5_ = _loc3_.options1;
               _loc6_ = a.cbTypes;
               if(_loc5_.nonemptyintersection(_loc6_,_loc5_.includes))
               {
                  false;
               }
               if(false)
               {
                  false;
                  _loc5_ = _loc3_.options2;
                  _loc6_ = b.cbTypes;
                  if(_loc5_.nonemptyintersection(_loc6_,_loc5_.includes))
                  {
                     false;
                  }
               }
               if(!false)
               {
                  true;
                  _loc5_ = _loc3_.options2;
                  _loc6_ = a.cbTypes;
                  if(_loc5_.nonemptyintersection(_loc6_,_loc5_.includes))
                  {
                     false;
                  }
                  if(false)
                  {
                     false;
                     _loc5_ = _loc3_.options1;
                     _loc6_ = b.cbTypes;
                     if(_loc5_.nonemptyintersection(_loc6_,_loc5_.includes))
                     {
                        false;
                     }
                  }
               }
               if(true)
               {
                  listeners.add(_loc3_);
               }
               _loc1_ = _loc1_.next;
               _loc2_ = _loc2_.next;
            }
            else
            {
               if(_loc3_.precedence <= _loc4_.precedence)
               {
                  true;
                  if(_loc3_.precedence == _loc4_.precedence)
                  {
                     false;
                  }
               }
               if(true)
               {
                  _loc1_ = _loc1_.next;
               }
               else
               {
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
   }
}
