package zpp_nape.util
{
   import nape.shape.ShapeIterator;
   
   public class ZNPNode_ShapeIterator extends Object
   {
      
      public function ZNPNode_ShapeIterator()
      {
      }
      
      public static var zpp_pool:ZNPNode_ShapeIterator;
      
      public var next:ZNPNode_ShapeIterator;
      
      public var elt:ShapeIterator;
   }
}
