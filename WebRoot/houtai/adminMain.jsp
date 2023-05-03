<%@ page language="java" contentType="text/html; charset=utf-8"  
import="com.model.*,com.util.*,java.util.List,java.util.ArrayList,net.sf.json.JSONArray,net.sf.json.JSONObject,net.sf.json.JsonConfig"  
pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<%
	// 权限验证
	Admin admin = (Admin)session.getAttribute("admin");
	if(admin==null){
		System.out.println("没有得到adminId");
		response.sendRedirect("shouye/index.jsp");
		return;
	}
	Jcpeizhi newJcpeizhi = (Jcpeizhi)session.getAttribute("jcpeizhi");
	List<Jcbiaoti> jcbiaotis = (List<Jcbiaoti>)session.getAttribute("jcbiaotis");
	List<List<Jcdaohang>> jcdaohangslist = (List<List<Jcdaohang>>)session.getAttribute("jcdaohangslist");
	List<Jcdaohang> jcdaohangs = new ArrayList<Jcdaohang>();
	for(int i=0;i<jcdaohangslist.size();i++){
		List<Jcdaohang> rows = jcdaohangslist.get(i);
		for(int j=0;j<rows.size();j++){
			jcdaohangs.add(rows.get(j));
		}
	}
	String adminName = admin.getAdminName();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=newJcpeizhi.getJcpeizhiName()%></title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>houtai/muban6/default.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>houtai/muban6/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>houtai/muban6/themes/icon.css" />
    <script type="text/javascript" src="<%=basePath%>houtai/muban6/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>houtai/muban6/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>houtai/muban6/XiuCai.index.js"> </script>

    <script type="text/javascript">

	var _menus = {
	"menus": [{
		"menuid": "1",
		"icon": "icon-sys",
		"menuname": "个人信息",
		"menus": [{
			"menuid": "11",
			"menuname": "修改密码",
			"icon": "icon-nav",
			"url": "<%=basePath%>admin/adminmima.jsp"
		},
		{
			"menuid": "12",
			"menuname": "登录日志",
			"icon": "icon-nav",
			"url": "<%=basePath%>admin/rizhi.jsp"
		}]
	}
	<%for(int i = 0; i < jcbiaotis.size(); i++){ %>
		<%int k = i + 2; %>
	,
	{
		"menuid": "<%=k%>",
		"icon": "icon-sys",
		"menuname": "<%=jcbiaotis.get(i).getJcbiaotiName() %>",
		"menus": [
		{
			"menuid": "<%=k%>1",
			"menuname": "<%=jcdaohangslist.get(i).get(0).getJcdaohangName() %>",
			"icon": "icon-nav",
			"url": "<%=basePath%>admin/<%=jcdaohangslist.get(i).get(0).getJcdaohangNeirong() %>"
		}
		<%for(int j = 1; j < jcdaohangslist.get(i).size(); j++){ %>
			<%int g = j + 1; %>
		,
		{
			"menuid": "<%=k%><%=g%>",
			"menuname": "<%=jcdaohangslist.get(i).get(j).getJcdaohangName() %>",
			"icon": "icon-nav",
			"url": "<%=basePath%>admin/<%=jcdaohangslist.get(i).get(j).getJcdaohangNeirong() %>"
		}
		<%} %>
		]
	}
	<%} %>
	]
};
    </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden"  fit="true"   scroll="no">
<noscript>
<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
    <img src="<%=basePath%>houtai/muban6/noscript.gif" alt='抱歉，请开启脚本支持！' />
</div></noscript>

<div id="loading-mask" style="position:absolute;top:0px; left:0px; width:100%; height:100%; background:#D2E0F2; z-index:20000">
<div id="pageloading" style="position:absolute; top:50%; left:50%; margin:-120px 0px 0px -120px; text-align:center;  border:2px solid #8DB2E3; width:200px; height:40px;  font-size:14px;padding:10px; font-weight:bold; background:#fff; color:#15428B;"> 
    <img src="<%=basePath%>houtai/muban6/loading.gif" align="absmiddle" /> 正在加载中,请稍候...</div>
</div>

    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(<%=basePath%>houtai/muban6/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">欢迎 <%=adminName %>&nbsp;&nbsp;<a href="<%=basePath%>shouye/tuichu.jsp" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 16px; "><img src="<%=basePath%>houtai/muban6/blocks.gif" width="20" height="20" align="absmiddle" /><%=newJcpeizhi.getJcpeizhiName()%></span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer"><%=newJcpeizhi.getJcpeizhiName()%></div>
    </div>
    <div region="west" split="true"  title="导航菜单" style="width:180px;" id="west">
			<div id="nav">
		<!--  导航内容 -->
				
			</div>

    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden; color:red; " >
				<h1 style="font-size:24px;">* 系统名：<%=newJcpeizhi.getJcpeizhiName()%></h1>
				<h1 style="font-size:24px;">* 登录名：<%=adminName %></h1>
			</div>
		</div>
    </div>

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="close">关闭</div>
		<div id="closeall">全部关闭</div>
		<div id="closeother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="closeright">当前页右侧全部关闭</div>
		<div id="closeleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="exit">退出</div>
	</div>


</body>
</html>