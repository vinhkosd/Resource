package game.living
{
   import road.game.resource.ActionMovie;
   
   public dynamic class Living185 extends ActionMovie
   {
       
      public function Living185()
      {
         super();
         addFrameScript(8,this.frame9,17,this.frame18,26,this.frame27,35,this.frame36,53,this.frame54,71,this.frame72,87,this.frame88,145,this.frame146,157,this.frame158,175,this.frame176,183,this.frame184,203,this.frame204,231,this.frame232,247,this.frame248,248,this.frame249);
      }
      
      function frame9() : *
      {
         stop();
      }
      
      function frame18() : *
      {
         stop();
      }
      
      function frame27() : *
      {
         stop();
      }
      
      function frame36() : *
      {
         stop();
      }
      
      function frame54() : *
      {
         gotoAndPlay("flyup");
      }
      
      function frame72() : *
      {
         gotoAndPlay("flyLR");
      }
      
      function frame88() : *
      {
         gotoAndPlay("stand");
      }
      
      function frame146() : *
      {
         gotoAndPlay("happy");
      }
      
      function frame158() : *
      {
         gotoAndPlay("walk");
      }
      
      function frame176() : *
      {
         gotoAndPlay("standB");
      }
      
      function frame184() : *
      {
         stop();
      }
      
      function frame204() : *
      {
         gotoAndPlay("standC");
      }
      
      function frame232() : *
      {
         gotoAndPlay("standC");
      }
      
      function frame248() : *
      {
         gotoAndPlay("standB");
      }
      
      function frame249() : *
      {
         stop();
      }
   }
}
