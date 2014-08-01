package zpp_nape.space
{
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.geom.ZPP_AABB;
   
   public class ZPP_SweepData extends Object
   {
      
      public function ZPP_SweepData()
      {
      }
      
      public static var zpp_pool:ZPP_SweepData;
      
      public var shape:ZPP_Shape;
      
      public var prev:ZPP_SweepData;
      
      public var next:ZPP_SweepData;
      
      public var aabb:ZPP_AABB;
   }
}
