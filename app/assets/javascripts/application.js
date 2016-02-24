// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function Popup(link){
    window.open(link.href,'details','toolbar=no, location=no, resizable=no,' +
        ' width=800px, height=400px');
    return false;
}

$(document).ready(function() {
    $('#fullpage').fullpage({
        sectionsColor: ['#F7Fc88', '#94Fc88', '#88E1FC', 'whitesmoke', 'black'],
        anchors: ['home', 'about', 'news', 'reviews'],
        menu: '#menu',
        scrollingSpeed: 800
    });

});
