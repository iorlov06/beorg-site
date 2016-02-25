/**
 * Created by ivanorlov on 25.02.16.
 */
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