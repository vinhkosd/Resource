package game.living
{
    import road.game.resource.*;

    dynamic public class Living191 extends ActionMovie
    {

        public function Living191()
        {
            addFrameScript(21, this.frame22, 33, this.frame34, 45, this.frame46, 103, this.frame104, 155, this.frame156, 176, this.frame177, 177, this.frame178);
            return;
        }// end function

        function frame22()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame34()
        {
            gotoAndPlay("walk");
            return;
        }// end function

        function frame46()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame104()
        {
            stop();
            return;
        }// end function

        function frame156()
        {
            stop();
            return;
        }// end function

        function frame177()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame178()
        {
            stop();
            return;
        }// end function

    }
}
