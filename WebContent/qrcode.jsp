<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.qrcode.min.js"></script>
<title>生成二维码</title>
</head>
<body>
<h1>以jQuery-qrcode的方式生成二维码</h1><br>
	<div id="qrcode"></div>
	<script type="text/javascript">
	  //jQuery('#qrcode').qrcode("水牛，欢迎来到动物世界");
	  //解决中文乱码问题
	  //可以使用zxing中的ReadQRCode.java解析生成的二维码
	  //二维码加上https://才会被识别为一个链接，不然会被识别为文本
	  var str = toUtf8("https://www.baidu.com");   
	  $('#qrcode').qrcode(str); 
	  
	  function toUtf8(str) {      
		    var out, i, len, c;      
		    out = "";      
		    len = str.length;      
		    for(i = 0; i < len; i++) {      
		        c = str.charCodeAt(i);      
		        if ((c >= 0x0001) && (c <= 0x007F)) {      
		            out += str.charAt(i);      
		        } else if (c > 0x07FF) {      
		            out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));      
		            out += String.fromCharCode(0x80 | ((c >>  6) & 0x3F));      
		            out += String.fromCharCode(0x80 | ((c >>  0) & 0x3F));      
		        } else {      
		            out += String.fromCharCode(0xC0 | ((c >>  6) & 0x1F));      
		            out += String.fromCharCode(0x80 | ((c >>  0) & 0x3F));      
		        }      
		    }      
		    return out;      
		}  
	</script>
</body>
</html>