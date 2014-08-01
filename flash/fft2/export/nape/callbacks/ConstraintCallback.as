package nape.callbacks
{
   import zpp_nape.util.ZPP_Flags;
   import nape.constraint.Constraint;
   import flash._-2v;
   
   public class ConstraintCallback extends Callback
   {
      
      public function ConstraintCallback()
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
         _loc1_ = _loc1_ + ["WAKE","SLEEP","BREAK"][zpp_inner.event - ZPP_Flags.id_CbEvent_WAKE];
         _loc1_ = _loc1_ + (":" + zpp_inner.constraint.outer.toString());
         _loc1_ = _loc1_ + (" : listener: " + _-C2.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get constraint() : Constraint
      {
         return zpp_inner.constraint.outer;
      }
   }
}
