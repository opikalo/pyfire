package nape.callbacks
{
   import zpp_nape.util.ZPP_Flags;
   import nape.phys.Body;
   import flash._-2v;
   
   public class BodyCallback extends Callback
   {
      
      public function BodyCallback()
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
         _loc1_ = _loc1_ + ["WAKE","SLEEP"][zpp_inner.event - ZPP_Flags.id_CbEvent_WAKE];
         _loc1_ = _loc1_ + (":" + zpp_inner.body.outer.toString());
         _loc1_ = _loc1_ + (" : listener: " + _-C2.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get body() : Body
      {
         return zpp_inner.body.outer;
      }
   }
}
