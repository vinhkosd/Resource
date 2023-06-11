package game.living
{
    import road.game.resource.*;

    dynamic public class Living200 extends ActionMovie
    {

        public function Living200()
        {
            addFrameScript(13, this.frame14, 14, this.frame15, 54, this.frame55, 55, this.frame56, 97, this.frame98, 98, this.frame99, 151, this.frame152, 169, this.frame170, 244, this.frame245, 245, this.frame246, 289, this.frame290, 317, this.frame318, 318, this.frame319, 319, this.frame320);
            return;
        }// end function

        function frame14()
        {
            stop();
            return;
        }// end function

        function frame15()
        {
            sendCommand("focus", {x:0, y:0, strategy:"default"});
            return;
        }// end function

        function frame55()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame56()
        {
            sendCommand("focus", {x:0, y:150, strategy:"default"});
            return;
        }// end function

        function frame98()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame99()
        {
            sendCommand("focus", {x:0, y:0, strategy:"default"});
            return;
        }// end function

        function frame152()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame170()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame245()
        {
            stop();
            return;
        }// end function

        function frame246()
        {
            sendCommand("focus", {x:-150, y:-100, strategy:"default", priority:3});
            return;
        }// end function

        function frame290()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame318()
        {
            gotoAndPlay("stand");
            return;
        }// end function

        function frame319()
        {
            stop();
            return;
        }// end function

        function frame320()
        {
            stop();
            return;
        }// end function

    }
}
