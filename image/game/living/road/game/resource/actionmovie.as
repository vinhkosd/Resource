package road.game.resource
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.utils.*;

    public class ActionMovie extends MovieClip
    {
        private var _labelLastFrames:Array;
        private var _soundControl:SoundTransform;
        private var _labelLastFrame:Dictionary;
        private var _currentAction:String;
        private var lastAction:String = "";
        private var _callBacks:Dictionary;
        private var _argsDic:Dictionary;
        private var _actionEnded:Boolean = true;
        protected var _actionRelative:Object;
        private var labelMapping:Dictionary;
        public static var LEFT:String = "left";
        public static var RIGHT:String = "right";
        public static var DEFAULT_ACTION:String = "stand";
        public static var STAND_ACTION:String = "stand";

        public function ActionMovie()
        {
            this._labelLastFrames = [];
            this._labelLastFrame = new Dictionary();
            this._argsDic = new Dictionary();
            this.labelMapping = new Dictionary();
            this._callBacks = new Dictionary();
            mouseEnabled = false;
            mouseChildren = false;
            scrollRect = null;
            this._soundControl = new SoundTransform();
            this._soundControl.volume = 0;
            soundTransform = this._soundControl;
            this.initMovie();
            this.addEvent();
            return;
        }// end function

        private function initMovie() : void
        {
            var _loc_1:* = currentLabels;
            var _loc_2:* = 0;
            while (_loc_2 < _loc_1.length)
            {
                
                if (_loc_2 == 0)
                {
                }
                else
                {
                    this._labelLastFrame[_loc_1[(_loc_2 - 1)].name] = int((_loc_1[_loc_2].frame - 1));
                }
                _loc_2++;
            }
            this._labelLastFrame[_loc_1[(_loc_1.length - 1)].name] = int(totalFrames);
            return;
        }// end function

        private function addEvent() : void
        {
            addEventListener(ActionMovieEvent.ACTION_END, this.__onActionEnd);
            return;
        }// end function

        public function doAction(param1:String, param2:Function = null, param3:Array = null) : void
        {
            var _loc_4:* = null;
            if (this.labelMapping[param1])
            {
                _loc_4 = this.labelMapping[param1];
            }
            else
            {
                _loc_4 = param1;
            }
            if (!this.hasThisAction(_loc_4))
            {
                if (param2 != null)
                {
                    this.callFun(param2, param3);
                }
                return;
            }
            if (!this._actionEnded)
            {
                if (this._callBacks[this.currentAction] != null)
                {
                    this.callCallBack(this.currentAction);
                }
                this._actionEnded = true;
                if (param2 != null)
                {
                    this.callFun(param2, param3);
                }
                dispatchEvent(new ActionMovieEvent(ActionMovieEvent.ACTION_END));
            }
            this._actionEnded = false;
            if (param2 != null && this._callBacks[_loc_4] != param2)
            {
                this._callBacks[_loc_4] = param2;
                this._argsDic[_loc_4] = param3;
            }
            this.lastAction = this.currentAction;
            this._currentAction = _loc_4;
            this._soundControl.volume = 1;
            soundTransform = this._soundControl;
            addEventListener(Event.ENTER_FRAME, this.loop);
            this.MCGotoAndPlay(this.currentAction);
            dispatchEvent(new ActionMovieEvent(ActionMovieEvent.ACTION_START));
            return;
        }// end function

        private function hasThisAction(param1:String) : Boolean
        {
            var _loc_3:* = null;
            var _loc_2:* = false;
            for each (_loc_3 in currentLabels)
            {
                
                if (_loc_3.name == param1)
                {
                    _loc_2 = true;
                    break;
                }
            }
            return _loc_2;
        }// end function

        private function loop(event:Event) : void
        {
            if (currentFrame == this._labelLastFrame[this.currentAction] || currentLabel != this.currentAction)
            {
                removeEventListener(Event.ENTER_FRAME, this.loop);
                this._actionEnded = true;
                if (this._callBacks[this.currentAction] != null)
                {
                    this.callCallBack(this.currentAction);
                }
                dispatchEvent(new ActionMovieEvent(ActionMovieEvent.ACTION_END));
            }
            return;
        }// end function

        private function callCallBack(param1:String) : void
        {
            var _loc_2:* = this._argsDic[param1];
            if (this._callBacks[param1] == null)
            {
                return;
            }
            this.callFun(this._callBacks[param1], _loc_2);
            this.deleteFun(param1);
            return;
        }// end function

        private function deleteFun(param1:String) : void
        {
            if (this._callBacks)
            {
                this._callBacks[param1] = null;
                delete this._callBacks[param1];
            }
            if (this._argsDic)
            {
                this._argsDic[param1] = null;
                delete this._argsDic[param1];
            }
            return;
        }// end function

        private function callFun(param1:Function, param2:Array) : void
        {
            if (param2 == null || param2.length == 0)
            {
                this.param1();
            }
            else if (param2.length == 1)
            {
                this.param1(param2[0]);
            }
            else if (param2.length == 2)
            {
                this.param1(param2[0], param2[1]);
            }
            else if (param2.length == 3)
            {
                this.param1(param2[0], param2[1], param2[2]);
            }
            else if (param2.length == 4)
            {
                this.param1(param2[0], param2[1], param2[2], param2[3]);
            }
            return;
        }// end function

        public function get currentAction() : String
        {
            return this._currentAction;
        }// end function

        public function setActionRelative(param1:Object) : void
        {
            this._actionRelative = param1;
            return;
        }// end function

        public function get popupPos() : Point
        {
            if (this["_popPos"])
            {
                return new Point(this["_popPos"].x * scaleX, this["_popPos"].y);
            }
            return new Point(-width * 0.4, -height * 0.8);
        }// end function

        public function get popupDir() : Point
        {
            if (this["_popDir"])
            {
                return new Point(this["_popDir"].x, this["_popDir"].y);
            }
            return new Point(0, 0);
        }// end function

        public function set direction(param1:String) : void
        {
            if (ActionMovie.LEFT == param1)
            {
                scaleX = 1;
            }
            else if (ActionMovie.RIGHT == param1)
            {
                scaleX = -1;
            }
            return;
        }// end function

        public function get direction() : String
        {
            if (scaleX > 0)
            {
                return ActionMovie.LEFT;
            }
            return ActionMovie.RIGHT;
        }// end function

        public function setActionMapping(param1:String, param2:String) : void
        {
            if (param1.length <= 0)
            {
                return;
            }
            this.labelMapping[param1] = param2;
            return;
        }// end function

        private function stopMovieClip(param1:MovieClip) : void
        {
            var _loc_2:* = 0;
            if (param1)
            {
                param1.gotoAndStop(1);
                if (param1.numChildren > 0)
                {
                    _loc_2 = 0;
                    while (_loc_2 < param1.numChildren)
                    {
                        
                        this.stopMovieClip(param1.getChildAt(_loc_2) as MovieClip);
                        _loc_2++;
                    }
                }
            }
            return;
        }// end function

        override public function gotoAndStop(param1:Object, param2:String = null) : void
        {
            super.gotoAndStop(param1, param2);
            return;
        }// end function

        protected function endAction() : void
        {
            dispatchEvent(new ActionMovieEvent("end"));
            return;
        }// end function

        protected function startAction() : void
        {
            dispatchEvent(new ActionMovieEvent("start"));
            return;
        }// end function

        protected function send(param1:String) : void
        {
            dispatchEvent(new ActionMovieEvent(param1));
            return;
        }// end function

        protected function sendCommand(param1:String, param2:Object = null) : void
        {
            dispatchEvent(new ActionMovieEvent(param1, param2));
            return;
        }// end function

        override public function gotoAndPlay(param1:Object, param2:String = null) : void
        {
            this.doAction(String(param1));
            return;
        }// end function

        public function MCGotoAndPlay(param1:Object) : void
        {
            super.gotoAndPlay(param1);
            return;
        }// end function

        private function __onActionEnd(event:ActionMovieEvent) : void
        {
            if (!this._actionRelative)
            {
                return;
            }
            if (!this._actionRelative[this._currentAction])
            {
                this.doAction(DEFAULT_ACTION);
                return;
            }
            if (this._actionRelative[this._currentAction] is Function)
            {
                var _loc_2:* = this._actionRelative;
                _loc_2[this._currentAction]();
            }
            else
            {
                this.doAction(_loc_2[this._currentAction]);
            }
            return;
        }// end function

        public function get versionTag() : String
        {
            return "road.game.resource.ActionMovie version:1.02";
        }// end function

        public function doSomethingSpecial() : void
        {
            return;
        }// end function

        public function dispose() : void
        {
            this._soundControl.volume = 0;
            removeEventListener(Event.ENTER_FRAME, this.loop);
            this.stopMovieClip(this);
            this._soundControl = null;
            this._labelLastFrames = null;
            if (parent)
            {
                parent.removeChild(this);
            }
            this._callBacks = null;
            return;
        }// end function

    }
}
