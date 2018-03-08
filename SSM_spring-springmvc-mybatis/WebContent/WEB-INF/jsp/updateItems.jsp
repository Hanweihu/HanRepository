<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改单个商品的信息</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/items/updateOne.do" method="post">
		商品名称：<input type="text" name="name" value="${items.name }" /><br>
		价格：<input type="text" name="price" value="${items.price }" /><br>
		描述：<textarea rows="10" cols="20" name="detail" >${items.detail }</textarea><br>
		<img id='itemsImgSrc' src='${picPath }${items.pic }' height="100" width="100" />
		商品图片：<input type="file" name="imgFile" onchange='submitImgUpload()'/><br />
		
		创建日期：<input type="text" name="createtime" value="<fmt:formatDate value="${items.createtime }" pattern="yyyy-MM-dd"/>" /><br>
		<input type="hidden" name="id" value="${items.id }">
		<input type="submit" value="确认修改"/>
	</form>
</body>
</html>