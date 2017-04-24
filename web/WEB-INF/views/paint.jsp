

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
	
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/mycss.css" rel="stylesheet">

    
	    
	    
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.ui.ruler.css">
		<script src="${pageContext.request.contextPath}/resources/jqueryui-ruler/js/jquery.ui.ruler.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	    
	    
  
	    
	    
	    
 <script>
        $(document).ready(function () {
            $('#main').ruler({arrowStyle: 'line'});
        });
	</script>
	  

   </head>

<body>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/navbaranim.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	
	
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

<button data-toggle="collapse" data-target="#pen" class="btn btn-s btn-default"><span class="glyphicon glyphicon-pencil"></span>&nbsp;</button>

	<div id="pen" class="collapse">
		<button type="button"  onclick = 'ballpainter("black")' class="btn btn-s btn-inverse blackwhitebtn">
		  <span class="glyphicon glyphicon-pencil"></span>&nbsp;
		</button>
		  <br>
		<button type="button"  onclick = 'ballpainter("red")' class="btn btn-s btn-danger">
		  <span class="glyphicon glyphicon-pencil"></span>&nbsp;
		</button>
		<br>
		<button type="button"  onclick = 'ballpainter("blue")' class="btn btn-s btn-primary">
		  <span class="glyphicon glyphicon-pencil"></span>&nbsp;
		</button>
		<br>
		<button type="button"  onclick = 'ballpainter("green")' class="btn btn-s btn-success">
		  <span class="glyphicon glyphicon-pencil"></span>&nbsp;
		</button>
		<br>
		<button type="button"  onclick = 'ballpainter("yellow")' class="btn btn-s btn-warning">
		  <span class="glyphicon glyphicon-pencil"></span>&nbsp;
		</button>
	</div>
  
  
  
<br><br>
<button type="button"  onclick = 'eraser()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-erase"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'zoomin()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-zoom-in"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'zoomout()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-zoom-out"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'addLayer()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-plus"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'deleteLayer()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-minus"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'upLayer()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-arrow-up"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'downLayer()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-arrow-down"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'ballpainter()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-repeat"></span>&nbsp;
</button>
<br><br>
<button type="button"  onclick = 'ballpainter()' class="btn btn-s btn-default">
  <span class="glyphicon glyphicon-resize-small"></span>&nbsp;
</button>
</div>


<div id="capsule">	 
<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="tNav">
<nav class="navbar navbar-default">
  <div class="container-fluid">
      <ul class="nav navbar-nav">
        <li><span class="glyphicon glyphicon-log-out iconBar" onclick="openNav()" id="open"></span></li>
        <li><button type="button"  class="btn btn-s btn-default" id="filesave"  onclick = 'fileSave()'><span class="glyphicon glyphicon-floppy-save"></span></button></li>
		<li><button type="button"  class="btn btn-s btn-default" id="filesave"  onclick = 'blackandwhite()'><span class="glyphicon glyphicon-certificate"></span></button></li>
        <li><button type="button"  class="btn btn-s btn-default" id="filesave"  onclick = 'sepia()'><span class="glyphicon glyphicon-filter"></span></button></li>
		<li><button type="button"  class="btn btn-s btn-default" id="filesave"  onclick = 'invert()'><span class="glyphicon glyphicon-filter"></span></button></li>
		
		<li><button type="button"  class="btn btn-s btn-default" id="filesave"  onclick = 'bright()'><span class="glyphicon glyphicon-filter"></span></button></li>
		
		
		
		<li><input type = 'file'  class="btn btn-s btn-default" onchange = 'fileOpen()' id = "openurl"/></li>
		<li>	
				<div>
					<select id = 'layer' onchange = 'selectLayerfunc(this.selectedIndex)'>
					<option>Select Layer...</option>
					</select>
				</div>
		</li>
		
		<li>	<div>
					<input type = 'showtext' id = 'fonttext' placeholder = 'Enter Text'  />
					<input type = 'text' id = 'fontsize' placeholder = 'Size' />
					<button type = 'button' onclick = 'seltext()'><span class="glyphicon glyphicon-ok"></button>
				</div>	
		</li>
	  </ul>	
	  <ul class="nav navbar-nav navbar-right">
			<li>
				<a class="page-scroll">iEdit</a>
			</li>
		</ul>
  </div>
</nav>
</div>


<div id="main">
 <input type="range" id="controls" value="50" min="0" max="100" maxlength="3">
<div id = "mycanvas"  onmousedown = "mouseDown(event)" onmousemove = "mouseMove(event)" onmouseup="mouseUp()">
<canvas id = 'final_result' style = "display: none;"></canvas>

</div>

</div>

</div>
<script>
var maxWidth = 0, maxHeight = 0;
var selectLayer = 0;
var layers = 0, unilayerid = 0;
var image;
var mouseFlag = false;
var canvas = [];
var layersid = [];
var startPointX, startPointY, endPoint;
var ctx;
var type = 0 // 1: ballpen 2: eraser 3: text
var scale = 1;
var colour = "black";
var brightness = document.getElementById('controls');





function getMousePos(canvas, evt) {
    var rect = canvas.getBoundingClientRect();
    return {
      x: (evt.clientX - rect.left) / scale,
      y: (evt.clientY - rect.top) / scale
    };
}
function ballpainter(color){
	type = 1;
	colour = color;
}
function eraser(){
	type = 2;
}
function seltext(){
	type = 3;
	var ctx = canvas[selectLayer].getContext("2d");
	var s = document.getElementById("fonttext");
	var b = document.getElementById("fontsize");
	ctx.font = b.value + "px arial" ;
	ctx.fillText(s.value, 50, 50);
}
function upLayer(){
	if(selectLayer >= layers) return;
	canvas[selectLayer + 1].style.zIndex = selectLayer;
	canvas[selectLayer].style.zIndex = selectLayer + 1;
	
	tmp = canvas[selectLayer]
	canvas[selectLayer] = canvas[selectLayer + 1];
	canvas[selectLayer + 1] = tmp;
		
	var layer = document.getElementById('layer');
	tmp = layer[selectLayer+1].value;
	layer[selectLayer+1].value = layer[selectLayer].value;
	layer[selectLayer].value = tmp;
	tmp = layer[selectLayer+1].text;
	layer[selectLayer+1].text = layer[selectLayer].text;
	layer[selectLayer].text = tmp;

	tmp = layersid[selectLayer]
	layersid[selectLayer] = layersid[selectLayer + 1];
	layersid[selectLayer + 1] = tmp;
}
function downLayer(){
	if(selectLayer <= 1) return;
	canvas[selectLayer - 1].style.zIndex = selectLayer;
	canvas[selectLayer].style.zIndex = selectLayer - 1;
	
	tmp = canvas[selectLayer]
	canvas[selectLayer] = canvas[selectLayer - 1];
	canvas[selectLayer - 1] = tmp;
	
	var layer = document.getElementById('layer');
	tmp = layer[selectLayer-1].value;
	layer[selectLayer-1].value = layer[selectLayer].value;
	layer[selectLayer].value = tmp;
	tmp = layer[selectLayer-1].text;
	layer[selectLayer-1].text = layer[selectLayer].text;
	layer[selectLayer].text = tmp;

	tmp = layersid[selectLayer]
	layersid[selectLayer] = layersid[selectLayer - 1];
	layersid[selectLayer - 1] = tmp;
}
//done
function zoomin(){
	scale = scale * 1.3;
	for(var i = 1; i <= layers; i ++){
		canvas[i].style.width = scale * canvas[i].width;
		canvas[i].style.height = scale * canvas[i].height;
	}
}
function zoomout(){
	scale = scale / 1.3;
	for(var i = 1; i <= layers; i ++){
		canvas[i].style.width = scale * canvas[i].width;
		canvas[i].style.height = scale * canvas[i].height;
	}
}
function fileOpen(){
	layers ++;	
	unilayerid ++;
	selectLayer = layers;
	
	layer.innerHTML = layer.innerHTML + "<option value = \'layer" + unilayerid + "\'>layer" + unilayerid + "</option>";
	layer.selectedIndex = layers;
	var para = document.createElement("canvas");
	para.id = 'mycanvas' + unilayerid;
	para.style = 'position: absolute';
	document.getElementById("mycanvas").appendChild(para);
	var file = document.getElementById("openurl").files[0];
	var url = window.URL || window.webkitURL;
	var src = url.createObjectURL(file);
	image = new Image();
	image.src = src;
	
	layersid[layers] = unilayerid;
	
	image.onload = function(){
		if(maxWidth < image.width) maxWidth = image.width;
		if(maxHeight < image.height) maxHeight = image.height;
		canvas[layers] = document.getElementById("mycanvas" + unilayerid);
		if(maxWidth > window.innerWidth)	canvas[layers].width = maxWidth;
		else canvas[layers].width = window.innerWidth;
		if(maxHeight > window.innerHeight)	canvas[layers].height = maxHeight;
		else canvas[layers].height = window.innerHeight;
		canvas[layers].style.width = scale * canvas[layers].width;
		canvas[layers].style.height = scale * canvas[layers].height;
		canvas[layers].zIndex = unilayerid;
		var ctx = canvas[layers].getContext("2d");
		ctx.drawImage(image, 0, 0);
		url.revokeObjectURL(src);
	}
	
}
function fileSave(){
	var result = document.getElementById("final_result");
	result.width = maxWidth;
	result.height = maxHeight;
	var ctx1, ctx = result.getContext("2d");
	for(var i = 1; i <= layers; i ++){
		if(canvas[i] == null){ continue;}
		ctx.drawImage(canvas[i], 0, 0);
	}
	var dataURL = result.toDataURL("image/png").replace("image/png", "image/octet-stream");
	window.location.href = dataURL;
}

















function bright() {
	
	
	var adjustment = document.getElementById("controls");
	var ctx = canvas[selectLayer].getContext("2d");
    var imgData = ctx.getImageData(0, 0, maxWidth,maxHeight), 
        pxData = imgData.data, 
        length = pxData.length; 
        for(var x = 0; x < length; x+=4) { 
            //convert to grayscale 
            var r = pxData[x], 
                g = pxData[x + 1], 
                b = pxData[x + 2]; 
 
            pxData[x] += adjustment; 
            pxData[x + 1] += adjustment; 
            pxData[x + 2] += adjustment;                              
        } 
        
        ctx.putImageData(imgData, 0, 0);
	
}




function sepia() {
//Algorithm: Get the RGB Values 
//Calculate tr, tg and tb using the formula
//tr = 0.393R + 0.769G + 0.189B
//tg = 0.349R + 0.686G + 0.168B
//tb = 0.272R + 0.534G + 0.131B

/*If tr > 255 then r = 255 else r = tr
If tg > 255 then g = 255 else g = tg
If tb > 255 then b = 255 else b = tb*/
	
	var ctx = canvas[selectLayer].getContext("2d");
		    var imgData = ctx.getImageData(0, 0, maxWidth,maxHeight), 
		        pxData = imgData.data, 
		        length = pxData.length; 
		        for(var x = 0; x < length; x+=4) { 
		            //convert to grayscale 
		            var r = pxData[x], 
		                g = pxData[x + 1], 
		                b = pxData[x + 2], 
		            sepiaR = r * .393 + g * .769 + b * .189, 
		            sepiaG = r * .349 + g * .686 + b * .168, 
		            sepiaB = r * .272 + g * .534 + b * .131; 
		            pxData[x] = sepiaR; 
		            pxData[x + 1] = sepiaG; 
		            pxData[x + 2] = sepiaB;                              
		        } 
		                      
		        //paint sepia image back 
		        ctx.putImageData(imgData, 0, 0);                         
		    

}



function invert() {


	var ctx = canvas[selectLayer].getContext("2d");
	    var imgData = ctx.getImageData(0, 0, maxWidth,maxHeight),
	     pxData = imgData.data,
    length = pxData.length;


		  for (var i = 0; i < length; i += 4) {
				pxData[i]     = 255 - pxData[i];     // red
				pxData[i + 1] = 255 - pxData[i + 1]; // green
				pxData[i + 2] = 255 - pxData[i + 2]; // blue
		   }


		ctx.putImageData(imgData, 0, 0);

}




//done

function blackandwhite() { 
    //get image data 
    
// We’re more sensitive to green than other colors,
//so green is weighted most heavily. The formula for luminosity is 0.21 R + 0.72 G + 0.07 B.    
    
    
var ctx = canvas[selectLayer].getContext("2d");

    var imgData = ctx.getImageData(0, 0, maxWidth,maxHeight), 
        pxData = imgData.data, 
        length = pxData.length; 
    for(var x = 0; x < length; x+=4) { 
        //convert to grayscale 
        var r = pxData[x], 
            g = pxData[x + 1], 
            b = pxData[x + 2], 
            grey = r * .21 + g * .72 + b * .07; 
        pxData[x] = grey; 
        pxData[x + 1] = grey; 
        pxData[x + 2] = grey;                                
    }                        
    //paint grayscale image back 
    ctx.putImageData(imgData, 0, 0);     
}



function selectLayerfunc(id){
	selectLayer = id;
}
function addLayer(){
	layers ++;
	unilayerid ++;
	
	selectLayer = layers;
	if(maxWidth == 0 && maxHeight == 0){
		maxWidth = maxHeight = 500;
	}
	layer.innerHTML = layer.innerHTML + "<option value = \'layers" + unilayerid + "\'>layer" + unilayerid + "</option>";
	layer.selectedIndex = unilayerid;
	layersid[layers] = unilayerid;
	var para = document.createElement("canvas");
	para.id = 'mycanvas' + unilayerid;
	para.style = 'position: absolute';
	document.getElementById("mycanvas").appendChild(para);
	canvas[layers] = document.getElementById("mycanvas" + unilayerid);
	canvas[layers].zIndex = unilayerid;
	if(maxWidth > window.innerWidth)	canvas[layers].width = maxWidth;
	else canvas[layers].width = window.innerWidth;
	if(maxHeight > window.innerHeight)	canvas[layers].height = maxHeight;
	else canvas[layers].height = window.innerHeight;
	canvas[layers].style.width = scale * canvas[layers].width;
	canvas[layers].style.height = scale * canvas[layers].height;
}
function deleteLayer(){
	if(selectLayer == 0) return;
	canvas.splice(selectLayer, 1);
	var select = document.getElementById('layer');
	select.removeChild(select[selectLayer]);
	select = document.getElementById('mycanvas');
	select.removeChild(document.getElementById('mycanvas' + layersid[selectLayer]));
	layersid.splice(selectLayer, 1);
	selectLayer = 0;
	layer.selectedIndex = 0;
	layers --;
}

function mouseDown(event){
	if(type == 0) return;
	mouseFlag = true;
	var pos = getMousePos(canvas[selectLayer], event);
	startPointX = pos.x;
	startPointY = pos.y;	
}

function mouseUp(){
	mouseFlag = false;
}

function mouseMove(event){
	if(mouseFlag){
		var pos = getMousePos(canvas[selectLayer], event);
		endPointX = pos.x;
		endPointY = pos.y;
		if(endPointX > maxWidth) endPointX = maxWidth;
		if(endPointY > maxHeight) endPointY = maxHeight;
		ctx = canvas[selectLayer].getContext("2d");
		ctx.lineWidth = 10;
		if(type == 2){
			ctx.globalCompositeOperation="destination-out";
		}
		if(type == 1){
			ctx.globalCompositeOperation="source-over";
		}
		ctx.beginPath();
		ctx.moveTo(startPointX, startPointY);

		ctx.lineTo(endPointX, endPointY);
		ctx.strokeStyle = colour;
		ctx.stroke();
	
		startPointX = endPointX;
		startPointY = endPointY;

	}
}
</script>

</body>
</html>