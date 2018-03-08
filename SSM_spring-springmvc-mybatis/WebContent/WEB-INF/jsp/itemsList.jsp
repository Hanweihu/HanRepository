<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商品列表</title>
	<style type="text/css">
		table {
			width: 888px;
			border-collapse: collapse;
		}
		th,td{
			border: 1px solid #000;
		}
	</style>
</head>
<body>
	<form action="${pageContext.request.contextPath }/items/deleteByIds.do" method="post">
	<table>
		<tr>
			<th>商品ID</th>
			<th>商品名称</th>
			<th>商品价格</th>
			<th>描述</th>
			<th>上架日期</th>
			<th>编辑</th>
		</tr>		
		<c:forEach var="items" items="${itemsList }">
			<tr>
				<td>
					<input type="checkbox" name="ids" value="${items.id }" />
					${items.id }
				</td> 
				<td>${items.name }</td>
				<td>${items.price }</td>
				<td>${items.detail }</td>
				<td>
					<fmt:formatDate value="${items.createtime }" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<a href="selectByID.do?id=${items.id }">修改</a>
					<a href="deleteOneById.do?id=${items.id }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6">
				<input type="submit" value="批量删除" />
			</td>
		</tr>						
	</table>
	</form>
</body>
</html>