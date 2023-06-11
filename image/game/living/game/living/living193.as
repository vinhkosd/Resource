package game.living
{
    import road.game.resource.*;

    dynamic public class Living193 extends ActionMovie
    {

        public function Living193()
        {
            addFrameScript(55, this.frame56, 72, this.frame73, 149, this.frame150, 199, this.frame200, 215, this.frame216, 216, this.frame217);
            return;
        }// end function

        function frame56()
        {
            stop();
            return;
        }// end function

        function frame73()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame150()
        {
            gotoAndPlay("walk");
            return;
        }// end function

        function frame200()
        {
            stop();
            return;
        }// end function

        function frame216()
        {
            stop();
            return;
        }// end function

        function frame217()
        {
            stop();
            return;
        }// end function

    }
}
