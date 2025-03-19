function getRidOfThisHasslingAdressBar(event) {
    setTimeout(function () {
        var head = document.head || document.getElementsByTagName('head')[0];
        var flutterView = document.getElementsByTagName("flutter-view")[0];
        var fltGlassPane = document.getElementsByTagName("flt-glass-pane")[0];
        var canvas = fltGlassPane.shadowRoot.children[0].children[0].children[0];
        //var scrollY = flutterView.clientHeight + 121; // iPhone SE
        var scrollY = flutterView.clientHeight + 121; // iPhone SE

        //fltGlassPane.shadowRoot.styleSheets[0].insertRule('flt-canvas-container {display: block;height: 100%;}');
        //fltGlassPane.shadowRoot.styleSheets[0].insertRule('flt-scene-host {display: block;height: 100%;}');
        //fltGlassPane.shadowRoot.styleSheets[0].insertRule('canvas {height: ' + scrollY + 'px !important;}');
        //flutterView.attributes.style.nodeValue.replace(/height: [0-9]*px;/, "height: " + scrollY + ";");

        document.styleSheets[0].insertRule("flutter-view {display: block ! important; height: 668px ! important;");
        document.styleSheets[0].insertRule('flt-canvas-container {display: block;height: 100% ! important;}');
        //window.scrollTo(0, 668);
        window.scrollTo(0, 697);
    }, 1000);
};
function onResize(event) {
    console.log("ONRESIZE");
    getRidOfThisHasslingAdressBar(event);
}

window.addEventListener("load", getRidOfThisHasslingAdressBar);
window.addEventListener("resize", onResize);