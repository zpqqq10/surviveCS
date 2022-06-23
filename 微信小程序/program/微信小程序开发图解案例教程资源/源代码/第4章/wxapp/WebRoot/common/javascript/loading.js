/**
 * loading.js
 * @update		2010-8-26
 * @version		0.1
 */
//依赖库
if (typeof(ol)=="undefined") {
	ol = {};
}
(function() {
	var $ = jQuery;
	ol.loading=function(options) {
		var self=this;
		this.loadingImg;
		this.loadingMask;
		this.container;

		_defaults= {
			id:null,
			loadingClass:null,
			zIndex:800
		};


		this.init=function(){
			options  = $.extend({},_defaults, options);
			this.container=$("#"+options.id);
			var position=this.container.css("position");
			var width=this.container.outerWidth();
			position=position=="absolute"?"absolute":"relative"
			width=width>0?width:"";
			var f=$("<div></div>").css({
				position:position,
				top:this.container.css("top"),
				left:this.container.css("left"),
				right:this.container.css("right"),
				bottom:this.container.css("bottom"),
				width:width
			});
			this.container.css({
				position:"relative",
				width:"100%",
				top:null,
				right:null,
				left:null,
				bottom:null
			}).wrap(f);

			this.loadingMask=$('<div class="jobcn_loading_mask"></div>');
			this.loadingMask.css({
				zIndex: options.zIndex
			});
			this.loadingImg=$('<div class="jobcn_loading"></div>').css("z-index",options.zIndex+1);
			if(!options.loadingClass)
			{
				this.loadingImg.addClass(options.loadingClass);
				this.loadingMask.addClass(options.loadingClass+"_mask");
			}

			this.container.parent().append(this.loadingMask).append(this.loadingImg);
			this.loadingMask.bgiframe();
		}

		this.show=function()
		{
			if ($.browser.msie && /6.0/.test(navigator.userAgent)) {
				this.loadingMask.css({
					width:this.container.outerWidth(),
					height:this.container.outerHeight()
				});
			}
			this.loadingMask.css("display", "block");
			this.loadingImg.css("display", "block");
		}
		this.hide=function()
		{
			this.loadingMask.css("display", "none");
			this.loadingImg.fadeOut(0);
		}
		this.init();
	};
})();
