package nape.callbacks
{
   import zpp_nape.callbacks.ZPP_Callback;
   import zpp_nape.util.ZPP_Flags;
   
   public class Callback extends Object
   {
      
      public function Callback()
      {
      }
      
      public var zpp_inner:ZPP_Callback;
      
      public function toString() : String
      {
         return "";
      }
      
      public function get listener() : Listener
      {
         return zpp_inner.listener.outer;
      }
      
      public function get event() : CbEvent
      {
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_END == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_END = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_WAKE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_WAKE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_SLEEP == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_SLEEP = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_BREAK == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BREAK = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_PRE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.CbEvent_ONGOING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_ONGOING = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return [ZPP_Flags.CbEvent_BEGIN,ZPP_Flags.CbEvent_END,ZPP_Flags.CbEvent_WAKE,ZPP_Flags.CbEvent_SLEEP,ZPP_Flags.CbEvent_BREAK,ZPP_Flags.CbEvent_PRE,ZPP_Flags.CbEvent_ONGOING][zpp_inner.event];
      }
   }
}
