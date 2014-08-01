package zpp_nape.space
{
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.geom.ZPP_AABB;
   import flash._-2v;
   
   public class ZPP_AABBNode extends Object
   {
      
      public function ZPP_AABBNode()
      {
         if(_-2v._-7E)
         {
            return;
         }
         height = -1;
      }
      
      public static var zpp_pool:ZPP_AABBNode;
      
      public var synced:Boolean;
      
      public var snext:ZPP_AABBNode;
      
      public var shape:ZPP_Shape;
      
      public var rayt:Number;
      
      public var parent:ZPP_AABBNode;
      
      public var next:ZPP_AABBNode;
      
      public var moved:Boolean;
      
      public var mnext:ZPP_AABBNode;
      
      public var height:int;
      
      public var first_sync:Boolean;
      
      public var dyn:Boolean;
      
      public var child2:ZPP_AABBNode;
      
      public var child1:ZPP_AABBNode;
      
      public var aabb:ZPP_AABB;
   }
}
