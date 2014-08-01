package nape.callbacks
{
   import nape.phys.Interactor;
   import nape.dynamics.ArbiterList;
   import flash._-2v;
   
   public class InteractionCallback extends Callback
   {
      
      public function InteractionCallback()
      {
         if(_-2v._-7E)
         {
            return;
         }
         super();
      }
      
      override public function toString() : String
      {
         var _loc1_:String = "Cb:";
         _loc1_ = _loc1_ + ["BEGIN","END","","","","","ONGOING"][zpp_inner.event];
         _loc1_ = _loc1_ + (":" + zpp_inner.int1.outer_i.toString() + "/" + zpp_inner.int2.outer_i.toString());
         _loc1_ = _loc1_ + (" : " + zpp_inner.wrap_arbiters.toString());
         _loc1_ = _loc1_ + (" : listener: " + _-C2.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get int2() : Interactor
      {
         return zpp_inner.int2.outer_i;
      }
      
      public function get int1() : Interactor
      {
         return zpp_inner.int1.outer_i;
      }
      
      public function get arbiters() : ArbiterList
      {
         return zpp_inner.wrap_arbiters;
      }
   }
}
