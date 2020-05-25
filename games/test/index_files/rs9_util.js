// RS9 javascript file

// Resize an iframe so it's as tall as its contents. This could be much shorter but is expanded for clarity.
function size_frame(frame) 
{
    frame.style.height = getFrameHeight(frame) + "px";
}

function getFrameHeight(frame) {
    var d = frame.contentDocument;
    var w = frame.contentWindow;
    var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
    var is_safari = navigator.userAgent.toLowerCase().indexOf('safari') > 0;

    if ( is_chrome ) {
        //chrome
        return Math.max(
            Math.max(w.document.body.scrollHeight, w.document.body.offsetHeight, w.document.body.clientHeight) + 25
        );
    } else if ( is_safari ) {
        //safari
        return Math.max(
            Math.max(w.document.body.scrollHeight, w.document.body.offsetHeight, w.document.body.clientHeight) + 25
        );
    } else if( d ) {
         //FF 3.0.11, Opera 9.63
        return Math.max(
            Math.max(d.documentElement.scrollHeight, w.document.body.scrollHeight),
            Math.max(d.documentElement.offsetHeight, w.document.body.offsetHeight),
            Math.max(d.documentElement.clientHeight, w.document.body.clientHeight)
            ) + 25;
    } else {
        //IE6, IE7
        return Math.max(
            Math.max(w.document.body.scrollHeight, w.document.body.offsetHeight, w.document.body.clientHeight) + 25
        );
    }

}
