package zpp_nape.space
{
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbSetPair;
   import zpp_nape.util.ZNPNode_ZPP_CbSetPair;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZPP_Set_ZPP_CbSet;
   import flash._-2v;
   
   public class ZPP_CbSetManager extends Object
   {
      
      public function ZPP_CbSetManager(param1:ZPP_Space = undefined)
      {
         if(_-2v._-7E)
         {
            return;
         }
         if(ZPP_Set_ZPP_CbSet.zpp_pool == null)
         {
            cbsets = new ZPP_Set_ZPP_CbSet();
         }
         else
         {
            cbsets = ZPP_Set_ZPP_CbSet.zpp_pool;
            ZPP_Set_ZPP_CbSet.zpp_pool = cbsets.next;
            cbsets.next = null;
         }
         cbsets.alloc();
         cbsets.lt = ZPP_CbSet.setlt;
         space = param1;
      }
      
      public var space:ZPP_Space;
      
      public function remove(param1:ZPP_CbSet) : void
      {
         var _loc2_:* = null as ZPP_CbSetPair;
         var _loc3_:* = null as ZPP_CbSetPair;
         var _loc4_:* = null as ZPP_CbSet;
         cbsets.remove(param1);
         while(param1.cbpairs.head != null)
         {
            _loc2_ = param1.cbpairs.pop_unsafe();
            if(_loc2_.a != _loc2_.b)
            {
               if(param1 == _loc2_.a)
               {
                  _loc2_.b.cbpairs.remove(_loc2_);
               }
               else
               {
                  _loc2_.a.cbpairs.remove(_loc2_);
               }
            }
            _loc3_ = _loc2_;
            _loc4_ = null;
            _loc3_.b = _loc4_;
            _loc3_.a = _loc4_;
            _loc3_.listeners.clear();
            _loc3_.next = ZPP_CbSetPair.zpp_pool;
            ZPP_CbSetPair.zpp_pool = _loc3_;
         }
         param1.manager = null;
      }
      
      public function get(param1:ZNPList_ZPP_CbType) : ZPP_CbSet
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function clear() : void
      {
      }
      
      public var cbsets:ZPP_Set_ZPP_CbSet;
   }
}
