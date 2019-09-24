// require rails-ujs
// require activestorage
// require turbolinks
// require_tree .

$(document).ready(function(){
      // const swup = new Swup("swup");
      var pathname = window.location.pathname;
      var links_list = $("a.collapsible-body");
      links_list.each(function(e){
      	if (pathname == "/"){ return false; }
      	if ($(this)[0].href.match(new RegExp(pathname, 'i'))) {
      		$(this).addClass("active");
      		$(this).parent().addClass("active");
      		$(this).parent().parent().parent().prop("style", "display: block;");
      		$(this).parent().parent().parent().parent().addClass("active").addClass("open");
      	} 
      });

    });
$(window).on('load', function(){
	$(".dataTables_filter input").each(function(e){
		$(this).addClass("dt_filter");
	});
});