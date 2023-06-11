package game.living
{
    import road.game.resource.*;

    dynamic public class Living199 extends ActionMovie
    {

        public function Living199()
        {
            addFrameScript(7, this.frame8, 24, this.frame25, 30, this.frame31, 50, this.frame51, 70, this.frame71, 71, this.frame72);
            return;
        }// end function

        function frame8()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame25()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame31()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame51()
        {
            stop();
            return;
        }// end function

        function frame71()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame72()
        {
            stop();
            return;
        }// end function

    }
}
