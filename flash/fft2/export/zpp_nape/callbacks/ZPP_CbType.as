package zpp_nape.callbacks
{
   import nape.callbacks.CbType;
   import nape.phys.InteractorList;
   import nape.constraint.ConstraintList;
   import zpp_nape.util.ZNPList_ZPP_InteractionListener;
   import zpp_nape.util.ZNPList_ZPP_Interactor;
   import zpp_nape.util.ZNPList_ZPP_Constraint;
   import zpp_nape.util.ZNPList_ZPP_ConstraintListener;
   import zpp_nape.util.ZNPList_ZPP_CbSet;
   import zpp_nape.util.ZNPList_ZPP_BodyListener;
   import flash._-2v;
   import zpp_nape.ZPP_ID;
   
   public class ZPP_CbType extends Object
   {
      
      public function ZPP_CbType()
      {
         if(_-2v._-7E)
         {
            return;
         }
         id = ZPP_ID.CbType();
         listeners = new ZNPList_ZPP_InteractionListener();
         bodylisteners = new ZNPList_ZPP_BodyListener();
         conlisteners = new ZNPList_ZPP_ConstraintListener();
         constraints = new ZNPList_ZPP_Constraint();
         interactors = new ZNPList_ZPP_Interactor();
         cbsets = new ZNPList_ZPP_CbSet();
      }
      
      public static function setlt(param1:ZPP_CbType, param2:ZPP_CbType) : Boolean
      {
         return param1.id < param2.id;
      }
      
      public static var ANY_SHAPE:nape.callbacks.CbType;
      
      public static var ANY_BODY:nape.callbacks.CbType;
      
      public static var ANY_COMPOUND:nape.callbacks.CbType;
      
      public static var ANY_CONSTRAINT:nape.callbacks.CbType;
      
      public var wrap_interactors:InteractorList;
      
      public var wrap_constraints:ConstraintList;
      
      public var userData;
      
      public var outer:nape.callbacks.CbType;
      
      public var listeners:ZNPList_ZPP_InteractionListener;
      
      public var interactors:ZNPList_ZPP_Interactor;
      
      public var id:int;
      
      public var constraints:ZNPList_ZPP_Constraint;
      
      public var conlisteners:ZNPList_ZPP_ConstraintListener;
      
      public var cbsets:ZNPList_ZPP_CbSet;
      
      public var bodylisteners:ZNPList_ZPP_BodyListener;
   }
}
