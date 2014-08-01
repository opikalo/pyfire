package zpp_nape.util
{
   import nape.geom.GeomPolyIterator;
   
   public class ZNPNode_GeomPolyIterator extends Object
   {
      
      public function ZNPNode_GeomPolyIterator()
      {
      }
      
      public static var zpp_pool:ZNPNode_GeomPolyIterator;
      
      public var next:ZNPNode_GeomPolyIterator;
      
      public var elt:GeomPolyIterator;
   }
}
