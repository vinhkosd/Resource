package game.living
{
    import road.game.resource.*;

    dynamic public class Living208 extends ActionMovie
    {

        public function Living208()
        {
            addFrameScript(11, this.frame12, 35, this.frame36, 119, this.frame120, 184, this.frame185, 185, this.frame186);
            return;
        }// end function

        function frame12()
        {
            gotoAndPlay("walk");
            return;
        }// end function

        function frame36()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame120()
        {
            stop();
            return;
        }// end function

        function frame185()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame186()
        {
            stop();
            return;
        }// end function

    }
}
