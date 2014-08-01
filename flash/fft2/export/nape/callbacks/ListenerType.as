package nape.callbacks
{
   import zpp_nape.util.ZPP_Flags;
   
   public class ListenerType extends Object
   {
      
      public function ListenerType()
      {
      }
      
      public static function get BODY() : ListenerType
      {
         if(ZPP_Flags.ListenerType_BODY == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_BODY = new ListenerType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ListenerType_BODY;
      }
      
      public static function get CONSTRAINT() : ListenerType
      {
         if(ZPP_Flags.ListenerType_CONSTRAINT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_CONSTRAINT = new ListenerType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ListenerType_CONSTRAINT;
      }
      
      public static function get INTERACTION() : ListenerType
      {
         if(ZPP_Flags.ListenerType_INTERACTION == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_INTERACTION = new ListenerType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ListenerType_INTERACTION;
      }
      
      public static function get PRE() : ListenerType
      {
         if(ZPP_Flags.ListenerType_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_PRE = new ListenerType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ListenerType_PRE;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.ListenerType_BODY == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_BODY = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ListenerType_BODY)
         {
            return "BODY";
         }
         if(ZPP_Flags.ListenerType_CONSTRAINT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_CONSTRAINT = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ListenerType_CONSTRAINT)
         {
            return "CONSTRAINT";
         }
         if(ZPP_Flags.ListenerType_INTERACTION == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_INTERACTION = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ListenerType_INTERACTION)
         {
            return "INTERACTION";
         }
         if(ZPP_Flags.ListenerType_PRE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ListenerType_PRE = new ListenerType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ListenerType_PRE)
         {
            return "PRE";
         }
         return "";
      }
   }
}
