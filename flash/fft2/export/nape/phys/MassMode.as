package nape.phys
{
   import zpp_nape.util.ZPP_Flags;
   
   public class MassMode extends Object
   {
      
      public function MassMode()
      {
      }
      
      public static function get DEFAULT() : MassMode
      {
         if(ZPP_Flags.MassMode_DEFAULT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.MassMode_DEFAULT = new MassMode();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.MassMode_DEFAULT;
      }
      
      public static function get FIXED() : MassMode
      {
         if(ZPP_Flags.MassMode_FIXED == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.MassMode_FIXED = new MassMode();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.MassMode_FIXED;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.MassMode_DEFAULT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.MassMode_DEFAULT = new MassMode();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.MassMode_DEFAULT)
         {
            return "DEFAULT";
         }
         if(ZPP_Flags.MassMode_FIXED == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.MassMode_FIXED = new MassMode();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.MassMode_FIXED)
         {
            return "FIXED";
         }
         return "";
      }
   }
}
