
<%@page import="shuaiwei.Dao.UserDao"%>
<%@page import="shuaiwei.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
	String queryString=request.getParameter("queryString");
				                            String str="";
				                        	double moneyXinjin=0;//现金
				                        	double moneyZhuanzhang=0;//转账
				                        	double moneyGuazhang=0;//挂账
				                        	double sum=0;//总金额
				                            List<User> list=new ArrayList<User>();
				                      		if(queryString!=null){
				                      			list=UserDao.queryZhangdanlistsByOther(queryString);
				                      			moneyXinjin=UserDao.queryAcountEverydayAndXianjinOther(queryString);
				                      			moneyZhuanzhang=UserDao.queryAcountEverydayAndGuazhangOther(queryString);
				                      			moneyGuazhang=UserDao.queryAcountEverydayAndGuazhangOther(queryString);
				                      			sum=UserDao.queryAcountEverydayAndAllOther(queryString);
				                      			str=queryString;
				                      		}else{
				                      			
				                      		}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>查询用户账单</title>
    <!-- Bootstrap Core CSS -->
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="css/colors/default-dark.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border fix-sidebar">
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
                        <a href="#" class="btn waves-effect waves-light btn-info hidden-md-down"> 查询当日账单</a>
                    </div>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
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
                        <h3 class="text-themecolor">查询用户账单</h3>
                    </div>
                    <div class="col-md-7 align-self-center">
                        <a href="#" class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down">帅威汽修</a>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
				<div class="row">
				    <!-- column -->
				    <div class="col-lg-12">
				        <div class="card">
				            <div class="card-body">
				                <h4 class="card-title">查询条件</h4>
				                  
				                <form action="zhangdanVipUser.jsp" method="post">
				                	<table border="0" cellspacing="" cellpadding="">
				                		<tr>
											<td>查询用户账单：</td>
											<td><input type="text" name="queryString"   style="width: 300px;" id="txt" placeholder="请输入关键字查询" value="<%=str %>" /></td><font  color="red" >可输入：日期、车牌号、姓名、手机号、维修内容、支付方式查询</font>
										</tr>
				                		
										<tr>
											<td colspan="2"><input type="submit" name="" value="查询" /></td>
											
										</tr>
										
				                	</table>
				                </form>
				                 <div class="table-responsive">
				                    <table class="table">
				                        <thead>
				                            <tr>
				                                <th>收银时间</th>
				                                <th>账单编号</th>
				                                <th>车牌号</th>
												<th>用户名</th>
				                                <th>手机号</th>
												<th>维修内容</th>
												<th>单价</th>
												<th>支付方式</th>
				                            </tr>
				                        </thead>
				                        <tbody>
				                      <%
				                       
				                        	for(User zd:list){
				                        %>
				                        	<tr>
				                        		<td><%=zd.getShouyintime() %></td>
				                                <td><%=zd.getOrderid() %></td>
				                                <td><%=zd.getCarid() %></td>
				                                <td><%=zd.getUsername() %></td>
												<td><%=zd.getMobile() %></td>
												<td><%=zd.getItemname() %></td>
												<td><%=zd.getPrice() %></td>
												<td><%=zd.getZhifutype() %></td>
											  </tr>
				                        <%		
				                        	}
				                        %>											
				                        </tbody>
				                    </table>
									<h1 class="card-title" align="center">
										<!--  现金金额为：<span style="color: red;"><%=moneyXinjin %></span>元
										<br>
										转账金额为：<span style="color: red;"><%=moneyZhuanzhang %></span>元
										<br>
										挂账金额为：<span style="color: red;"><%=moneyGuazhang %></span>元
										<br>	<br>-->
										合计金额为：<span style="color: red;"><%=sum %></span>元
									</h1>
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
                <!-- ============================================================== -->
                <!-- Row -->
            
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">Copyright &copy; 2020/4/6 D9</footer>
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
    <!-- Bootstrap tether Core JavaScript -->
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
</body>

</html>