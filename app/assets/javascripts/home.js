/**
 * Created by ivanorlov on 25.02.16.
 */
function Popup(link){
    window.open(link.href,'details','toolbar=no, location=no, resizable=no,' +
        ' width=800px, height=400px');
    return false;
}

