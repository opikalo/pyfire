package zpp_nape.geom
{
   import zpp_nape.util.ZPP_Set_ZPP_SimpleVert;
   import flash._-2v;
   import zpp_nape.ZPP_ID;
   
   public class ZPP_SimpleVert extends Object
   {
      
      public function ZPP_SimpleVert()
      {
         if(_-2v._-7E)
         {
            return;
         }
         id = ZPP_ID.ZPP_SimpleVert();
      }
      
      public static var zpp_pool:zpp_nape.geom.ZPP_SimpleVert;
      
      public static function less_xy(param1:zpp_nape.geom.ZPP_SimpleVert, param2:zpp_nape.geom.ZPP_SimpleVert) : Boolean
      {
         if(param1.y >= param2.y)
         {
            true;
            if(param1.y == param2.y)
            {
               false;
            }
         }
         return true;
      }
      
      public static function swap_nodes(param1:zpp_nape.geom.ZPP_SimpleVert, param2:zpp_nape.geom.ZPP_SimpleVert) : void
      {
         var _loc3_:ZPP_Set_ZPP_SimpleVert = param1.node;
         param1.node = param2.node;
         param2.node = _loc3_;
      }
      
      public static function get(param1:Number, param2:Number) : zpp_nape.geom.ZPP_SimpleVert
      {
         var _loc3_:* = null as zpp_nape.geom.ZPP_SimpleVert;
         if(zpp_nape.geom.ZPP_SimpleVert.zpp_pool == null)
         {
            _loc3_ = new zpp_nape.geom.ZPP_SimpleVert();
         }
         else
         {
            _loc3_ = zpp_nape.geom.ZPP_SimpleVert.zpp_pool;
            zpp_nape.geom.ZPP_SimpleVert.zpp_pool = _loc3_.next;
            _loc3_.next = null;
         }
         _loc3_.alloc();
         _loc3_.x = param1;
         _loc3_.y = param2;
         return _loc3_;
      }
      
      public var y:Number;
      
      public var x:Number;
      
      public var node:ZPP_Set_ZPP_SimpleVert;
      
      public var next:zpp_nape.geom.ZPP_SimpleVert;
      
      public var links:ZPP_Set_ZPP_SimpleVert;
      
      public var id:int;
      
      public function free() : void
      {
         links.clear();
         var _loc1_:ZPP_Set_ZPP_SimpleVert = links;
         _loc1_.free();
         _loc1_.next = ZPP_Set_ZPP_SimpleVert.zpp_pool;
         ZPP_Set_ZPP_SimpleVert.zpp_pool = _loc1_;
         links = null;
         node = null;
         forced = false;
      }
      
      public var forced:Boolean;
      
      public function alloc() : void
      {
         links;
         if(ZPP_Set_ZPP_SimpleVert.zpp_pool == null)
         {
            links = new ZPP_Set_ZPP_SimpleVert();
         }
         else
         {
            links = ZPP_Set_ZPP_SimpleVert.zpp_pool;
            ZPP_Set_ZPP_SimpleVert.zpp_pool = links.next;
            links.next = null;
         }
         links.alloc();
         links.lt = zpp_nape.geom.ZPP_SimpleVert.less_xy;
      }
   }
}
