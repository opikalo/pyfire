package zpp_nape.space
{
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.phys.ZPP_Body;
   import flash._-2v;
   
   public class ZPP_Component extends Object
   {
      
      public function ZPP_Component()
      {
         if(_-2v._-7E)
         {
            return;
         }
         sleeping = false;
         island = null;
         parent = this;
         rank = 0;
         woken = false;
      }
      
      public static var zpp_pool:ZPP_Component;
      
      public var woken:Boolean;
      
      public var waket:int;
      
      public var sleeping:Boolean;
      
      public var rank:int;
      
      public var parent:ZPP_Component;
      
      public var next:ZPP_Component;
      
      public var island:ZPP_Island;
      
      public var isBody:Boolean;
      
      public var constraint:ZPP_Constraint;
      
      public var body:ZPP_Body;
   }
}
