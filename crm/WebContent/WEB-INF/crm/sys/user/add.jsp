<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Import lib BEGIN -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- END   -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>客户管理页面</title>
        <!-- 外部样式表引入 开始 -->
        <link rel="stylesheet" type="text/css" href="assets/css/sys-user-edit.css">
        <!-- 外部样式表引入 结束 -->
    </head>
    <body>
    	<!-- 【1】顶部基础导航栏 开始 -->
    	<div class="basic-nav-bar">
    		<label style="color:red"><b>基础导航栏区域</b></label>
    		<ul>
				<li><a href=#>登陆者：</a></li>
				<li><a href="#">注销</a></li>
				<li><a href="#">开发</a></li>
    		</ul>
    	</div>
    	<!-- 【1】顶部基础导航栏 结束 -->
    	
	    <!-- --------------------------------------------------------------------------- -->
	    	
	    <!-- 【2】核心区域 开始 -->
		<div class="core-block">
	    	<div class="function-nav-bar"><!-- 【2】-1左侧功能导航栏 开始 -->
	    		<p style="color:red"><b>功能导航栏区域</b></p>
	    		<table border="1">
	    			<tr>
						<td><b>系统级别</b></td>
						<td><b>客户级别</b></td>
					</tr>
					<tr>
						<td><a href="<c:url value="/sysuser/list"/>">用户管理</a></td>
						<td><a href="">客户管理</a></td>
					</tr>
					<tr>
						<td><a href="">权限管理</a></td>
						<td><a href="">服务管理</a></td>
					</tr>
					<tr>
						<td><a href="">菜单管理</a></td>
						<td><a href="">活动管理</a></td>
					</tr>
					<tr>
						<td><a href="">系统日志</a></td>
						<td><a href="">开发中...</a></td>
					</tr>
	    		</table>
	    	</div><!-- 【2】-1 左侧功能导航栏 结束 -->
	    	
	    	<div class="create-new-admin"><!-- 【2】-2 创建新的管理员  开始 -->
				<div class="create-admin-form"><!-- 【2】-2-1  新增管理员表单  开始 -->
					<form action="add" method="post">
						<p>创建新的管理员账号</p>
						<div>
							<label>用户名：</label><br>
							<input type="text" name="userId">
						</div>
						<div>
							<label>新密码：</label><br>
							<input type="password" name="userPassword">
						</div>
						<div>
							<label>确认密码：</label><br>
							<input type="password" name="checkPassword">
						</div>
						<div>
							<label>权限分配：</label><br>
							<select name="sysRole.roleId">
								<c:forEach items="${listSysRole}" var="sysRole">
								<option value="${sysRole.roleId}">${sysRole.roleName}</option>
								</c:forEach>
							</select>
						</div>
						<div>
							<button type="submit">提交修改</button>
						</div>
					</form>
		        </div><!-- 【2】-2-1  新增管理员表单  结束 -->
	    	</div><!-- 【2】-2 创建新的管理员  结束-->
	    </div><!-- 【2】核心区域 结束 -->
    
    	<!-- ------------------------------------------------------------------------------------ -->
    
   		<!-- 【3】页脚 开始 -->
	    <div class="foot-block">
	    	<p style="color:red"><b>页脚，版权区域</b></p>
	    </div>
		<!-- 页脚 结束 -->
 	</body>
</html>