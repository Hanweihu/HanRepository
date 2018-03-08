<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>添加商品</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
	<script type="text/javascript">
		function submitImgUpload() {
			// 使用ajax提交表单
			$("#itemsForm").ajaxSubmit({
				type: 'POST',
				url: '${pageContext.request.contextPath }/upload/uploadPic.do',
				dataType: 'text',
				data: {
					fileName: 'imgFile'
				},				
				success: function(data) {
					// 把json格式字符串转换成json对象
					var jsonObj = $.parseJSON(data);					
					// 把返回的服务器图片路径设置给img标签，回显
					$("#itemsImgSrc").attr("src",jsonObj.fullPath);
					// 数据库保存相对路径
					$("#itemsImg").val(jsonObj.relativePath);
				}
			});
		}
	</script>
</head>
<body>
	<form id="itemsForm" action="${pageContext.request.contextPath }/items/addItems.do">
		商品名称：<input type="text" name="name" /><br>
		价格：<input type="text" name="price" /><br>
		描述：<textarea rows="10" cols="20" name="detail" ></textarea><br>
		<img id='itemsImgSrc' src='${picPath }${items.pic }' height="100" width="100" />
		商品图片：<input type="file" name="imgFile" onchange='submitImgUpload()'/><br />
		<input type='hidden' id='itemsImg' name='pic' value='' reg="^.+$" tip="亲！您忘记上传图片了。" />
		创建日期：<input type="text" name="createtime" /><br>
		<input type="submit" value="添加"/>
	</form>
</body>
</html>