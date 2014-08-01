package nape.space
{
   import zpp_nape.util.ZPP_Flags;
   
   public class Broadphase extends Object
   {
      
      public function Broadphase()
      {
      }
      
      public static function get DYNAMIC_AABB_TREE() : Broadphase
      {
         if(ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE = new Broadphase();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE;
      }
      
      public static function get SWEEP_AND_PRUNE() : Broadphase
      {
         if(ZPP_Flags.Broadphase_SWEEP_AND_PRUNE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Broadphase_SWEEP_AND_PRUNE = new Broadphase();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.Broadphase_SWEEP_AND_PRUNE;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE = new Broadphase();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE)
         {
            return "DYNAMIC_AABB_TREE";
         }
         if(ZPP_Flags.Broadphase_SWEEP_AND_PRUNE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Broadphase_SWEEP_AND_PRUNE = new Broadphase();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.Broadphase_SWEEP_AND_PRUNE)
         {
            return "SWEEP_AND_PRUNE";
         }
         return "";
      }
   }
}
