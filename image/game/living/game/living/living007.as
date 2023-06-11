package game.living
{
    import road.game.resource.*;

    dynamic public class Living007 extends ActionMovie
    {

        public function Living007()
        {
            addFrameScript(13, frame14, 28, frame29, 40, frame41, 68, frame69, 81, frame82, 95, frame96);
            return;
        }// end function

        function frame14()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame29()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame41()
        {
            stop();
            return;
        }// end function

        function frame69()
        {
            stop();
            return;
        }// end function

        function frame82()
        {
            stop();
            return;
        }// end function

        function frame96()
        {
            gotoAndPlay("stand");
            return;
        }// end function

    }
}
