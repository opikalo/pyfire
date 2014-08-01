package zpp_nape.geom
{
   import nape.geom.MatMN;
   import flash._-2v;
   
   public class ZPP_MatMN extends Object
   {
      
      public function ZPP_MatMN(param1:int = 0, param2:int = 0)
      {
         if(_-2v._-7E)
         {
            return;
         }
         m = param1;
         n = param2;
         x = new Vector.<Number>(param1 * param2,true);
      }
      
      public var x:Vector.<Number>;
      
      public var outer:MatMN;
      
      public var n:int;
      
      public var m:int;
   }
}
