package zpp_nape.util
{
   import zpp_nape.geom.ZPP_PartitionVertex;
   
   public class ZNPNode_ZPP_PartitionVertex extends Object
   {
      
      public function ZNPNode_ZPP_PartitionVertex()
      {
      }
      
      public static var zpp_pool:ZNPNode_ZPP_PartitionVertex;
      
      public var next:ZNPNode_ZPP_PartitionVertex;
      
      public var elt:ZPP_PartitionVertex;
   }
}
