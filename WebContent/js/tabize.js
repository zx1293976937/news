(function($) {

	$.fn.tabize = function(options) {
		var defaults = {
			force : false,
			callback : function() {
			}
		};

		options = $.extend(defaults, options);

		var self = $(this);

		var items = self.find('>ul.tabs>li.tab');
		var divs = self.find('>div');

		items.mouseover(function() {
			items.removeClass('active');
			$(this).addClass('active');

			var index = items.index($(this));
			var current = divs.hide().eq(index);
			current.show();

			if ($.isFunction(options.callback)) {
				options.callback($(this));
			}
			current.find(".fW_Controls > a").eq(0).click();
			
		}).eq(0).mouseover();

	};

})(jQuery);