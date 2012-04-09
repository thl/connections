

// This is for preloading rollover images
// HTML example: no example necessary. You should basically cut all the preLoad references from the <body> tag and paste into the "preloading" function below

<!--
var myimages = new Array();
function preloading(){
for (x=0; x<preloading.arguments.length; x++){
myimages[x] = new Image();
myimages[x].src = preloading.arguments[x];
}
}
preloading("/images/image01.gif","/images/image02.gif","/images/image03.gif");
//-->





// This launches pop-up windows
// HTML example: <a href="test.html" target="popup" onclick="MM_openBrWindow('','popup','menubar=yes,scrollbars=yes,resizable=yes,width=500,height=500')">Test</a>

<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->





// This clears a field of its contents once it's clicked
// HTML example: <input type="text" onclick="clearText(this)" value="Click here to clear text" /> 

<!--
function clearText(thefield){
if (thefield.defaultValue==thefield.value)
thefield.value = ""
} 
//-->





// This places a blinking cursor in a text field
// HTML example: <form name="search" method="get" action=""><input type="text" name="words" /></form>

// HTML example, Part II: The javascript below must go at the bottom of the HTML document, just prior to </body></html>

<!--
  document.search.words.focus();
//-->





// This creates a basic show-hide layer function
// HTML example: <a href="javascript:toggleLayer('note');">Whatever</a>, followed by <div id="note">Whatever</div>

<!--
function toggleLayer(whichLayer)
{
	if (document.getElementById)
	{
		// this is the way the standards work
		var style2 = document.getElementById(whichLayer).style;
		style2.display = style2.display? "":"block";
	}
	else if (document.all)
	{
		// this is the way old msie versions work
		var style2 = document.all[whichLayer].style;
		style2.display = style2.display? "":"block";
	}
	else if (document.layers)
	{
		// this is the way nn4 works
		var style2 = document.layers[whichLayer].style;
		style2.display = style2.display? "":"block";
	}
}
//-->

