package game.living
{
    import road.game.resource.*;

    dynamic public class Living205 extends ActionMovie
    {

        public function Living205()
        {
            addFrameScript(96, this.frame97, 114, this.frame115, 130, this.frame131, 144, this.frame145, 160, this.frame161, 174, this.frame175, 218, this.frame219, 230, this.frame231, 278, this.frame279, 279, this.frame280, 280, this.frame281);
            return;
        }// end function

        function frame97()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame115()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame131()
        {
            gotoAndPlay("walk");
            return;
        }// end function

        function frame145()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame161()
        {
            sendCommand("focus", {x:1200, y:200, strategy:"shockingLinear", shockingX:8, shockingY:15, speed:10, duration:5, priority:3, shockingFreq:4});
            return;
        }// end function

        function frame175()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame219()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame231()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame279()
        {
            stop();
            return;
        }// end function

        function frame280()
        {
            stop();
            return;
        }// end function

        function frame281()
        {
            stop();
            return;
        }// end function

    }
}
