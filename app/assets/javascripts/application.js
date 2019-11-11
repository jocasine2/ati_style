// require rails-ujs
// require activestorage
// require turbolinks
// require_tree .
//= require materialize.min
//= require plugins

$(document).ready(function(){
      var pathname = window.location.pathname;
      var links_list = $("aside.sidenav-main a.collapsible-body");
      links_list.each(function(e){
        if (pathname == "/"){ return false; }
        if ($(this)[0].getAttribute("href") !== "#" && $(this)[0].href.match(new RegExp(pathname, 'i'))) {
          $(this).addClass("active");
          $(this).parent().addClass("active");
          $(this).parent().parent().parent().prop("style", "display: block;");
          $(this).parent().parent().parent().parent().addClass("active").addClass("open");
        }
      });  


      $("a").on('click', function(e){
       e.preventDefault();
       var goto = this.getAttribute("href");

       if (goto != '#' && !goto.startsWith('#') && goto.length !== 0 && goto != "javascript:void(0);") {
         $(".page-transition").addClass("active");
         $("body").css("overflow", "hidden");
         setTimeout(function(){
          window.location = goto;
        }, 1200);
       }
     });
    });

$(window).on('load', function(){
  $(".dataTables_filter input").each(function(e){
    $(this).addClass("dt_filter");
  });
  $(".nav-collapsible .navbar-toggler").click(function() {
      // Toggle navigation expan and collapse on radio click
      if ($(".sidenav-main").hasClass("nav-expanded") && !$(".sidenav-main").hasClass("nav-lock")) {
       $(".sidenav-main").toggleClass("nav-expanded");
       $("#main").toggleClass("main-full");
     } else {
       $("#main").toggleClass("main-full");
     }
      // Set navigation lock / unlock with radio icon
      if ($(this).children().text() == "radio_button_unchecked") {
       $(this).children().text("radio_button_checked");
       $(".sidenav-main").addClass("nav-lock");
       $(".navbar .nav-collapsible").addClass("sideNav-lock");
     } else {
       $(this).children().text("radio_button_unchecked");
       $(".sidenav-main").removeClass("nav-lock");
       $(".navbar .nav-collapsible").removeClass("sideNav-lock");
     }
     changeSideMenuState();
   }); 

  if (sideMenuState() == "true") {
         $(".sidenav-main.nav-collapsible, .navbar .nav-collapsible")
         .addClass("nav-expanded")
         .removeClass("nav-collapsed");
         $("#main").removeClass("main-full");
         $(".nav-collapsible .navbar-toggler i").text("radio_button_checked");
         $(".sidenav-main").addClass("nav-lock");
         $(".navbar .nav-collapsible").addClass("sideNav-lock");
       } else {
         $("#main").addClass("main-full");
         $(".nav-collapsible .navbar-toggler i").text("radio_button_unchecked");
         $(".sidenav-main").removeClass("nav-lock");
         $(".navbar .nav-collapsible").removeClass("sideNav-lock");
         $(".sidenav-main.nav-collapsible, .navbar .nav-collapsible")
         .addClass("nav-collapsed")
         .removeClass("nav-expanded");
       }
     });

function sideMenuState(){
 if (localStorage.getItem('sgd_menu_open') == null) {
  var menu_open = $("a.navbar-toggler i").text() == "radio_button_checked";
  localStorage.setItem('sgd_menu_open', menu_open);
}
return localStorage.getItem('sgd_menu_open');
}

function changeSideMenuState(){
 var menu_open = $("a.navbar-toggler i").text() == "radio_button_checked";
 localStorage.setItem('sgd_menu_open', menu_open);
}