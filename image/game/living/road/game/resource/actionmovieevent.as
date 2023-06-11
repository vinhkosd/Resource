package road.game.resource
{
    import flash.events.*;

    public class ActionMovieEvent extends Event
    {
        private var _source:ActionMovie;
        private var _data:Object;
        public static const ACTION_START:String = "actionStart";
        public static const ACTION_END:String = "actionEnd";

        public function ActionMovieEvent(param1:String, param2:Object = null)
        {
            super(param1);
            if (param2)
            {
                this._data = param2;
            }
            return;
        }// end function

        public function get data() : Object
        {
            return this._data;
        }// end function

        public function get source() : ActionMovie
        {
            return super.target as ActionMovie;
        }// end function

    }
}
