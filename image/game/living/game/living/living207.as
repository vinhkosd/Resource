package game.living
{
    import road.game.resource.*;

    dynamic public class Living207 extends ActionMovie
    {

        public function Living207()
        {
            addFrameScript(12, this.frame13, 36, this.frame37, 96, this.frame97, 97, this.frame98);
            return;
        }// end function

        function frame13()
        {
            stop();
            return;
        }// end function

        function frame37()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame97()
        {
            stop();
            return;
        }// end function

        function frame98()
        {
            gotoAndPlay("stand");
            return;
        }// end function

    }
}
