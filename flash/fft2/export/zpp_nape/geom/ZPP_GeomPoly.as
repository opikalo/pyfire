package zpp_nape.geom
{
   import nape.geom.GeomPoly;
   import flash._-2v;
   
   public class ZPP_GeomPoly extends Object
   {
      
      public function ZPP_GeomPoly(param1:GeomPoly = undefined)
      {
         if(_-2v._-7E)
         {
            return;
         }
         outer = param1;
      }
      
      public var vertices:ZPP_GeomVert;
      
      public var outer:GeomPoly;
   }
}
