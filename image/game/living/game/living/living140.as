package game.living
{
    import road.game.resource.*;

    dynamic public class Living140 extends ActionMovie
    {

        public function Living140()
        {
            addFrameScript(2, frame3, 19, frame20);
            return;
        }// end function

        function frame3()
        {
            gotoAndStop("stand");
            return;
        }// end function

        function frame20()
        {
            stop();
            return;
        }// end function

    }
}
