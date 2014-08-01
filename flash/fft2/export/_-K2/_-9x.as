package _-K2
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import each ._-60;
   import each ._-AK;
   import com.greensock.TweenMax;
   import fla.snd.snd_sirena;
   import fla.snd.snd_StartEngine;
   import fla.snd.snd_sirena2;
   
   public class _-9x extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-F0 = 50;
         if(_loc1_)
         {
            _-Jj = 0.5;
            if(_loc2_ && (_-9x))
            {
            }
            _-7t = false;
            if(!(_loc2_ && (_loc1_)))
            {
               _-4I = false;
               _-GK = 0.1;
               if(_loc1_ || (_loc1_))
               {
               }
               return;
            }
            _-H = new SoundChannel();
            if(!_loc2_)
            {
               _-Ln = new SoundChannel();
               if(_loc1_)
               {
                  _-Y = new SoundChannel();
               }
               _-3i = new snd_sirena();
               if(!_loc2_)
               {
                  sirena1 = new snd_sirena();
                  if(_loc2_ && (_loc1_))
                  {
                  }
                  _-BH = "idle";
               }
               sirena2 = new snd_sirena2();
               _-73 = sirena1;
               if(!_loc2_)
               {
                  _-BH = "idle";
               }
            }
            return;
         }
         _-GA = new snd_StartEngine();
         if(!_loc2_)
         {
            _-3i = new snd_sirena();
            if(!_loc2_)
            {
               sirena1 = new snd_sirena();
               if(_loc2_ && (_loc1_))
               {
               }
               _-BH = "idle";
            }
            sirena2 = new snd_sirena2();
            _-73 = sirena1;
            if(!_loc2_)
            {
               _-BH = "idle";
            }
         }
         return;
      }
      if(_loc1_)
      {
         _-E1 = new SoundChannel();
         if(!_loc2_)
         {
            _-GZ = new SoundChannel();
         }
         _-AM = false;
         if(_loc1_)
         {
            _-7t = false;
            if(!(_loc2_ && (_loc1_)))
            {
               _-4I = false;
               _-GK = 0.1;
               if(_loc1_ || (_loc1_))
               {
               }
               return;
            }
            _-H = new SoundChannel();
            if(_loc2_)
            {
            }
            return;
         }
      }
      if(_loc1_)
      {
         _-Y = new SoundChannel();
         _-GA = new snd_StartEngine();
         if(_loc2_)
         {
         }
         return;
      }
      if(!_loc2_)
      {
         sirena1 = new snd_sirena();
         if(_loc2_ && (_loc1_))
         {
         }
         _-BH = "idle";
         return;
      }
      if(!_loc2_)
      {
         _-BH = "idle";
      }
      }
      
      public function _-9x()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            super();
         }
      }
      
      public static var _-6b:Number = 1300;
      
      public static var _-F0:Number = 50;
      
      public static var _-Jj:Number = 0.5;
      
      public static var _-Dg:Sound;
      
      public static var _-9:Sound;
      
      public static var soundChannel:SoundChannel = new SoundChannel();
      
      public static var _-E1:SoundChannel;
      
      public static var _-GZ:SoundChannel;
      
      private static var _-AM:Boolean = false;
      
      private static var _-7t:Boolean = false;
      
      private static var _-4I:Boolean = false;
      
      public static function _-Cg(param1:*, param2:SoundTransform = null) : SoundChannel
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Sound = null;
         if(_loc6_ || (param2))
         {
            if(param2 != null)
            {
               if(!(_loc5_ && (param2)))
               {
                  if(param2.volume <= 0)
                  {
                     if(_loc5_ && (_-9x))
                     {
                     }
                  }
               }
            }
            _loc3_ = new param1() as Sound;
            if(0)
            {
            }
            if(_-AM == false)
            {
               if(!(_loc5_ && (param1)))
               {
                  soundChannel = _loc3_.play(null,null,param2);
               }
            }
            return soundChannel;
         }
         return null;
      }
      
      public static function _-LU(param1:Number, param2:Number, param3:Number, param4:Number) : SoundTransform
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-0A(param1:* = null) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:SoundTransform = null;
         if(!(_loc4_ && (_-9x)))
         {
            _-E1.stop();
            if(_loc3_)
            {
               if(param1 != null)
               {
                  if(!(_loc4_ && (param1)))
                  {
                     _-Dg = new param1() as Sound;
                     if(_loc4_)
                     {
                     }
                     if(_-7t == false)
                     {
                     }
                     return;
                  }
               }
            }
            _loc2_ = new SoundTransform(0.4);
            if(!(_loc4_ && (_loc2_)))
            {
               _-E1 = _-Dg.play(0,int.MAX_VALUE,_loc2_);
            }
            return;
         }
         if(_-Dg != null)
         {
            if(!(_loc4_ && (_-9x)))
            {
               if(_-7t == false)
               {
               }
            }
            _loc2_ = new SoundTransform(0.4);
            if(!(_loc4_ && (_loc2_)))
            {
               _-E1 = _-Dg.play(0,int.MAX_VALUE,_loc2_);
            }
         }
      }
      
      public static function _-0C() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            _-E1.stop();
         }
      }
      
      public static function get muteSound() : Boolean
      {
         return _-AM;
      }
      
      public static var state:String;
      
      public static function set muteSound(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function get muteMusic() : Boolean
      {
         return _-7t;
      }
      
      public static function set muteMusic(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function get _-Fo() : Boolean
      {
         return _-4I;
      }
      
      public static function set _-Fo(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var _-GK:Number = 0.1;
      
      public static var _-H:SoundChannel;
      
      public static var _-Ln:SoundChannel = new SoundChannel();
      
      public static var _-Y:SoundChannel;
      
      public static var _-GA:Sound;
      
      public static var _-3i:Sound = new snd_sirena();
      
      public static var sirena1:Sound;
      
      public static var sirena2:Sound = new snd_sirena2();
      
      public static var _-73:Sound = sirena1;
      
      public static function _-6w() : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            _-H.soundTransform.volume = 0.01;
            if(!_loc3_)
            {
               _-Ln = _-3i.play(0,int.MAX_VALUE);
               if(_loc2_)
               {
               }
               _loc1_ = new SoundTransform(0);
               if(!_loc3_)
               {
                  _-Ln.soundTransform = _loc1_;
                  if(_loc2_ || (_loc3_))
                  {
                     TweenMax.to(_-Ln,3,{"volume":0.5 * _-GK});
                     if(_loc2_ || (_loc2_))
                     {
                     }
                  }
                  _-7D(snd_sirena);
               }
               return;
            }
         }
         _-Ln.soundTransform.volume = 0;
         var _loc1_:SoundTransform = new SoundTransform(0);
         if(!_loc3_)
         {
            _-Ln.soundTransform = _loc1_;
            if(_loc2_ || (_loc3_))
            {
               TweenMax.to(_-Ln,3,{"volume":0.5 * _-GK});
               if(_loc2_ || (_loc2_))
               {
               }
            }
            _-7D(snd_sirena);
         }
      }
      
      public static function _-A() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (_loc2_))
         {
            _-H.stop();
            if(!(_loc1_ && (_-9x)))
            {
               _-Ln.stop();
            }
         }
      }
      
      public static function _-7D(param1:* = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-0x() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (_loc2_))
         {
            _-GZ.stop();
         }
      }
      
      private static var _-BH:String = "idle";
      
      public static function get _-7u() : String
      {
         return _-BH;
      }
      
      public static function set _-7u(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-H-(param1:int = 0) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:SoundTransform = null;
         if(_loc4_ || (_-9x))
         {
            _-Y.stop();
         }
         if(_loc5_ && (_loc3_))
         {
         }
         var _loc2_:* = 0.1;
         if(_loc4_)
         {
            if(param1 < 3)
            {
               if(_loc5_ && (_loc3_))
               {
               }
               if(_-73 != null)
               {
                  if(_loc4_ || (_loc2_))
                  {
                     if(_-AM == false)
                     {
                     }
                  }
                  _-Y = _-73.play(0,int.MAX_VALUE);
               }
               return;
            }
            _-73 = sirena2;
            if(!(_loc5_ && (_loc2_)))
            {
               if(_loc4_ || (_loc3_))
               {
               }
               _loc2_ = 0.5;
               if(_-73 != null)
               {
                  if(_loc4_ || (_loc2_))
                  {
                     if(_-AM == false)
                     {
                     }
                  }
                  _-Y = _-73.play(0,int.MAX_VALUE);
               }
               return;
            }
            _loc3_ = new SoundTransform(_loc2_);
            if(_loc4_ || (_-9x))
            {
               _-Y.soundTransform = _loc3_;
            }
            return;
         }
         _-73 = sirena1;
         if(_loc4_)
         {
            if(!(_loc5_ && (_loc2_)))
            {
               if(!(_loc5_ && (param1)))
               {
                  _loc2_ = 0.1;
               }
               if(!(_loc5_ && (param1)))
               {
                  if(_-73 != null)
                  {
                     if(_loc4_ || (_loc2_))
                     {
                     }
                     _-Y = _-73.play(0,int.MAX_VALUE);
                     _loc3_ = new SoundTransform(_loc2_);
                     if(_loc4_ || (_-9x))
                     {
                        _-Y.soundTransform = _loc3_;
                     }
                  }
                  return;
               }
               if(_-73 != null)
               {
                  if(_loc4_ || (_loc2_))
                  {
                  }
                  _-Y = _-73.play(0,int.MAX_VALUE);
                  _loc3_ = new SoundTransform(_loc2_);
                  if(_loc4_ || (_-9x))
                  {
                     _-Y.soundTransform = _loc3_;
                  }
               }
               return;
            }
            _loc2_ = 0.1;
            if(_-73 != null)
            {
               if(_loc4_ || (_loc2_))
               {
               }
               _-Y = _-73.play(0,int.MAX_VALUE);
               _loc3_ = new SoundTransform(_loc2_);
               if(_loc4_ || (_-9x))
               {
                  _-Y.soundTransform = _loc3_;
               }
            }
            return;
         }
         if(_-AM == false)
         {
            _-Y = _-73.play(0,int.MAX_VALUE);
            _loc3_ = new SoundTransform(_loc2_);
            if(_loc4_ || (_-9x))
            {
               _-Y.soundTransform = _loc3_;
            }
         }
      }
      
      public static function _-L3() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
            _-Y.stop();
         }
      }
   }
}
