package com.junkbyte.console.core
{
   import flash.events.EventDispatcher;
   import com.junkbyte.console.Console;
   import com.junkbyte.console.ConsoleConfig;
   
   public class ConsoleCore extends EventDispatcher
   {
      
      public function ConsoleCore(param1:Console)
      {
         super();
         this.console = param1;
         this.config = this.console.config;
      }
      
      protected var console:Console;
      
      protected var config:ConsoleConfig;
      
      protected function get remoter() : Remoting
      {
         return this.console.remoter;
      }
      
      protected function report(param1:* = "", param2:int = 0, param3:Boolean = true, param4:String = null) : void
      {
         this.console.report(param1,param2,param3,param4);
      }
   }
}
