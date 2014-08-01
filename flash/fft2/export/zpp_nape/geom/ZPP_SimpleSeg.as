package zpp_nape.geom
{
   import zpp_nape.util.ZPP_Set_ZPP_SimpleVert;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleSeg;
   import flash._-2v;
   import zpp_nape.ZPP_ID;
   
   public class ZPP_SimpleSeg extends Object
   {
      
      public function ZPP_SimpleSeg()
      {
         if(_-2v._-7E)
         {
            return;
         }
         id = ZPP_ID.ZPP_SimpleSeg();
      }
      
      public static var zpp_pool:zpp_nape.geom.ZPP_SimpleSeg;
      
      public static function get(param1:ZPP_SimpleVert, param2:ZPP_SimpleVert) : zpp_nape.geom.ZPP_SimpleSeg
      {
         var _loc3_:* = null as zpp_nape.geom.ZPP_SimpleSeg;
         if(zpp_nape.geom.ZPP_SimpleSeg.zpp_pool == null)
         {
            _loc3_ = new zpp_nape.geom.ZPP_SimpleSeg();
         }
         else
         {
            _loc3_ = zpp_nape.geom.ZPP_SimpleSeg.zpp_pool;
            zpp_nape.geom.ZPP_SimpleSeg.zpp_pool = _loc3_.next;
            _loc3_.next = null;
         }
         _loc3_.alloc();
         _loc3_.left = param1;
         _loc3_.right = param2;
         _loc3_.vertices.insert(param1);
         _loc3_.vertices.insert(param2);
         return _loc3_;
      }
      
      public var vertices:ZPP_Set_ZPP_SimpleVert;
      
      public var right:ZPP_SimpleVert;
      
      public var prev:zpp_nape.geom.ZPP_SimpleSeg;
      
      public var node:ZPP_Set_ZPP_SimpleSeg;
      
      public var next:zpp_nape.geom.ZPP_SimpleSeg;
      
      public function less_xy(param1:ZPP_SimpleVert, param2:ZPP_SimpleVert) : Boolean
      {
         if(param1.x >= param2.x)
         {
            true;
            if(param1.x == param2.x)
            {
               false;
            }
         }
         return true;
      }
      
      public var left:ZPP_SimpleVert;
      
      public var id:int;
      
      public function free() : void
      {
         var _loc1_:ZPP_SimpleVert = null;
         right = _loc1_;
         left = _loc1_;
         prev = null;
         node = null;
         vertices.clear();
         var _loc2_:ZPP_Set_ZPP_SimpleVert = vertices;
         _loc2_.free();
         _loc2_.next = ZPP_Set_ZPP_SimpleVert.zpp_pool;
         ZPP_Set_ZPP_SimpleVert.zpp_pool = _loc2_;
         vertices = null;
      }
      
      public function alloc() : void
      {
         if(ZPP_Set_ZPP_SimpleVert.zpp_pool == null)
         {
            vertices = new ZPP_Set_ZPP_SimpleVert();
         }
         else
         {
            vertices = ZPP_Set_ZPP_SimpleVert.zpp_pool;
            ZPP_Set_ZPP_SimpleVert.zpp_pool = vertices.next;
            vertices.next = null;
         }
         vertices.alloc();
         vertices.lt = less_xy;
      }
   }
}
