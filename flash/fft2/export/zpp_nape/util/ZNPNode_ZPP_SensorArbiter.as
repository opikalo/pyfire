package zpp_nape.util
{
   import zpp_nape.dynamics.ZPP_SensorArbiter;
   
   public class ZNPNode_ZPP_SensorArbiter extends Object
   {
      
      public function ZNPNode_ZPP_SensorArbiter()
      {
      }
      
      public static var zpp_pool:ZNPNode_ZPP_SensorArbiter;
      
      public var next:ZNPNode_ZPP_SensorArbiter;
      
      public var elt:ZPP_SensorArbiter;
   }
}
