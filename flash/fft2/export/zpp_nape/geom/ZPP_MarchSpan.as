package zpp_nape.geom
{
   import flash._-2v;
   
   public class ZPP_MarchSpan extends Object
   {
      
      public function ZPP_MarchSpan()
      {
         if(_-2v._-7E)
         {
            return;
         }
         parent = this;
      }
      
      public static var zpp_pool:ZPP_MarchSpan;
      
      public var rank:int;
      
      public var parent:ZPP_MarchSpan;
      
      public var out:Boolean;
      
      public var next:ZPP_MarchSpan;
      
      public var freed:Boolean;
      
      public function free() : void
      {
         freed = true;
         parent = this;
      }
      
      public function alloc() : void
      {
         freed = false;
         out = false;
         rank = 0;
      }
   }
}
