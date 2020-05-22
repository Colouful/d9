<%@page import="shuaiwei.Dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html >

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>帅威汽修</title>
    <!-- Bootstrap Core CSS -->
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- This page CSS -->
    <!-- chartist CSS -->
    <link href="assets/plugins/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!--c3 CSS -->
    <link href="assets/plugins/c3-master/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="css/pages/dashboard.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="css/colors/default-dark.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar card-no-border">
     
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">帅威汽修</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">
                        <!-- Logo icon --><b>
                            <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span>
                            帅威汽修
                        </span>
                    </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item hidden-xs-down search-box"> <a class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search & enter"> <a class="srh-btn"><i class="ti-close"></i></a>
                            </form>
                        </li>
                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item">
                            <a class="nav-link waves-effect waves-dark" href="#"><img src="assets/images/users/1.jpg" alt="user" class="profile-pic" /></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                   <ul id="sidebarnav">
                   <li> <a class="waves-effect waves-dark" href="index.jsp" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">添加账单</span></a></li>
               	<li> <a class="waves-effect waves-dark" href="zhangdanDay.jsp" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">查询当日账单</span></a></li>
               	<li> <a class="waves-effect waves-dark" href="zhangdanMonth.jsp" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">查询当月账单</span></a></li>
               	<li> <a class="waves-effect waves-dark" href="zhangdanYear.jsp" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">查询当年账单</span></a></li>
                   <li> <a class="waves-effect waves-dark" href="zhangdanAll.jsp" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">查询全部账单</span></a></li>
                        <li> <a class="waves-effect waves-dark" href="zhangdanVipUser.jsp" aria-expanded="false"><i class="mdi mdi-earth"></i><span class="hide-menu">查询用户账单</span></a></li>
               <!--    <li> <a class="waves-effect waves-dark" href="queryVipUser.jsp" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">查询会员</span></a></li>
                   <li> <a class="waves-effect waves-dark" href="addVipUser.jsp" aria-expanded="false"><i class="mdi mdi-emoticon"></i><span class="hide-menu">添加会员</span></a></li>
                   <li> <a class="waves-effect waves-dark" href="updateVipInfo.jsp" aria-expanded="false"><i class="mdi mdi-earth"></i><span class="hide-menu">修改会员信息</span></a></li>
                  <li> <a class="waves-effect waves-dark" href="vipczinfo.jsp" aria-expanded="false"><i class="mdi mdi-book-open-variant"></i><span class="hide-menu">会员充值记录</span></a></li>
                     -->                      
               </ul>
                    <div class="text-center m-t-30">
                        <a href="#" class="btn waves-effect waves-light btn-info hidden-md-down">添加账单</a>
                    </div>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ==51;&#x9875;&#x6A21;&#x677F;</a></footer>============================================================ -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">添加账单</h3>
                    </div>
                    <div class="col-md-7 align-self-center">
                        <a href="#" class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down"> 帅威汽修</a>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
				 <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">添加账单</h4><a href="index.jsp">刷新页面</a>
                      <jsp:useBean id="myZD" class="shuaiwei.model.User" scope="page"></jsp:useBean>
                           <jsp:setProperty property="*" name="myZD"/> 
                           <%
                           request.setCharacterEncoding("utf-8");
                           response.setCharacterEncoding("utf-8");
                         
                           if(myZD.getCarid()!=null){
                        	   UserDao.addUser(myZD);
                        	   out.print("<script type='text/javascript'>alert('添加账单成功！');</script>");
                           }
                           %>
                                 <form action="index.jsp"  method="get">
                                	<table border="0" cellspacing="" cellpadding="">
                                		<tr>
                                			<td>收银时间：</td>
                                			<td ><input  type="text" name="shouyin" style="width: 250px;background-color: red;" readonly="readonly" id="" placeholder="此内容不填" value="" /></td>
                                		</tr>
                                		<tr>
                                			<td>账单编号：</td>
                                			<td><input type="text" name="orderid"  style="width: 250px;background-color: red;" readonly="readonly" id="" placeholder="此内容不填" value="" /></td>
                                		</tr>
                                		<tr>
											<td>车牌号：</td>
											<td><input type="text"  name="carid" style="width: 250px;" id="" placeholder="请输入车牌号" value="" /><font color="red" size="5px">*</font></td>
										</tr>
										<tr>
											<td>用户名：</td>
											<td><input type="text"  name="username" style="width: 250px;" id="" placeholder="请输入用户名/可用车牌号代替" value="" /><font color="red" size="5px">*</font></td>
										</tr>
										<tr>
											<td>手机号：</td>
											<td><input type="text"  name="mobile" style="width: 250px;" id="" placeholder="请输入手机号" value="" /><font color="red" size="5px">*</font></td>
										</tr>
                                		<tr>
                                			<td>维修内容：</td>
                                			<td><input type="text"  name="itemname" style="width: 250px;" id="" placeholder="请输入维修内容" value="" /><font color="red" size="5px">*</font></td>
                                		</tr>
										<tr>
											<td>单价：</td>
											<td><input type="text"  name="price" style="width: 250px;" id="" placeholder="请输入单价" value="" /><font color="red" size="5px">*</font></td>
										</tr>
										<tr>
											<td>支付方式：</td>
											<td>
									                <select  name="zhifutype" id="select01">
									                    <option>现金</option>
									                    <option>转账</option>
									                    <option>挂账</option>
									                </select>
							               <font color="red" size="5px">*</font> </td>
										</tr>
									
                                		<tr>
                                			<td colspan="2"><input type="submit" id="" name="" value="添加账单" /> </td>
                                			
                                		</tr>
                                		
                                	</table>
                                </form>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">Copyright &copy; 2020/4/6.D9.</footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <script src="assets/plugins/chartist-js/dist/chartist.min.js"></script>
    <script src="assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!--c3 JavaScript -->
    <script src="assets/plugins/d3/d3.min.js"></script>
    <script src="assets/plugins/c3-master/c3.min.js"></script>
    <!-- Chart JS -->
    <script src="js/dashboard.js"></script>
</body>

</html>