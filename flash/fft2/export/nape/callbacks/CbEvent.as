package nape.callbacks
{
   import zpp_nape.util.ZPP_Flags;
   
   public class CbEvent extends Object
   {
      
      public function CbEvent()
      {
      }
      
      public static function get BEGIN() : CbEvent
      {
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_BEGIN;
      }
      
      public static function get ONGOING() : CbEvent
      {
         if(ZPP_Flags.CbEvent_ONGOING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_ONGOING = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_ONGOING;
      }
      
      public static function get END() : CbEvent
      {
         if(ZPP_Flags.CbEvent_END == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_END = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_END;
      }
      
      public static function get WAKE() : CbEvent
      {
         if(ZPP_Flags.CbEvent_WAKE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_WAKE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_WAKE;
      }
      
      public static function get SLEEP() : CbEvent
      {
         if(ZPP_Flags.CbEvent_SLEEP == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_SLEEP = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_SLEEP;
      }
      
      public static function get BREAK() : CbEvent
      {
         if(ZPP_Flags.CbEvent_BREAK == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BREAK = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_BREAK;
      }
      
      public static function get PRE() : CbEvent
      {
         if(ZPP_Flags.CbEvent_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_PRE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.CbEvent_PRE;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.CbEvent_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_PRE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_PRE)
         {
            return "PRE";
         }
         if(ZPP_Flags.CbEvent_BEGIN == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BEGIN = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_BEGIN)
         {
            return "BEGIN";
         }
         if(ZPP_Flags.CbEvent_ONGOING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_ONGOING = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_ONGOING)
         {
            return "ONGOING";
         }
         if(ZPP_Flags.CbEvent_END == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_END = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_END)
         {
            return "END";
         }
         if(ZPP_Flags.CbEvent_WAKE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_WAKE = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_WAKE)
         {
            return "WAKE";
         }
         if(ZPP_Flags.CbEvent_SLEEP == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_SLEEP = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_SLEEP)
         {
            return "SLEEP";
         }
         if(ZPP_Flags.CbEvent_BREAK == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.CbEvent_BREAK = new CbEvent();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.CbEvent_BREAK)
         {
            return "BREAK";
         }
         return "";
      }
   }
}
