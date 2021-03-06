package org.openPyro.effects
{
	import flash.display.DisplayObject;
	
	public class FadeEffect extends PyroEffect
	{
		public var _alphaFrom:Number = 1;
		public var _alphaTo:Number = 0;
		public var _duration:Number = 1;
		
		
		public function FadeEffect(alphaFrom:Number=1, alphaTo:Number=0, duration:Number=1){
			this._alphaFrom = alphaFrom;
			this._alphaTo = alphaTo;
			this._duration = duration;
		}
		
		override public function start():void{
			_target.alpha = _alphaFrom;
			var descriptor:EffectDescriptor = new EffectDescriptor(_target, _duration, {alpha:_alphaTo})
			this.effectDescriptors = [descriptor];
			super.start();
		}
		
		
	}
}