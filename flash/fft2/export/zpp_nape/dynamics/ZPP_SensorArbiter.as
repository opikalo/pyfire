package zpp_nape.dynamics
{
   import flash._-2v;
   
   public class ZPP_SensorArbiter extends ZPP_Arbiter
   {
      
      public function ZPP_SensorArbiter()
      {
         if(_-2v._-7E)
         {
            return;
         }
         super();
         type = ZPP_Arbiter.SENSOR;
         sensorarb = this;
      }
      
      public static var zpp_pool:ZPP_SensorArbiter;
      
      public var next:ZPP_SensorArbiter;
   }
}
