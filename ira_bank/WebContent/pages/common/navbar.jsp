<html>
<head>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/bootstrap.css" />  
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/bootstrap.css.map " />  

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-default " role="navigation">
        <div class="container">
        <p class="navbar-text navbar-right"><a href="<%=request.getContextPath()%>/ExternalUsers/Issues" class="navbar-link">Submit an Issue</a></p>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">

                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">I.R.A Bank</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse  navbar-collapse navbar-ex1-collapse">
             <ul class="nav navbar-nav">
            
            <!-- Accounts -->
            
            <!-- User -->
            
          
            <li><a href="<%=request.getContextPath()%>/user/showAccountInfo">My Account Details</a></li>
            <!--  Admin -->
             <li><a href="<%=request.getContextPath()%>/admin/listAccounts">User Accounts Management</a></li>
            
            <!-- Functionalities -->
            
            
            <!-- credit debit -->
            <li><a href="<%=request.getContextPath()%>/ExternalUsers/credit_debit">Credit/Debit Transactions</a></li>
              <!-- transfer funds -->
            <li><a href="<%=request.getContextPath()%>/ExternalUsers/Transfer_funds">Transfer Funds</a></li>
            
            <!-- Bill pay -->
            <li><a href="<%=request.getContextPath()%>/pages/ExternalUsers/BillpayUser.jsp">User Billpay</a></li>
            <li><a href="<%=request.getContextPath()%>/pages/ExternalUsers/Billpaymerchant.jsp">Merchant Billpay</a></li>
          
         
            

            <li><a href="<%=request.getContextPath()%>/pages/ExternalUsers/user_profile.jsp">Profile</a></li>
		    
		    
		   <!--  Transactions -->
		   
		  <!--   <li> <a class="dropdown-toggle" data-toggle="dropdown">Transactions<b class="caret"></b></a>
               <ul class="dropdown-menu"> -->
                 <li><a href="<%=request.getContextPath()%>/ExternalUsers/Request">Request Transactions</a></li>
		     	 <li><a href="<%=request.getContextPath()%>/ExternalUsers/listTransactions">My Transactions</a></li>
		      	<li><a href="<%=request.getContextPath()%>/admin/listTransactions">List Transactions</a></li>
             <!--   </ul>
            </li>
		    -->
		   
		    
		
			<!--  TODO Rakesh to add : 
			 View all pending/non-pending transactions - admin
			 --> 
			
			 <!--  Admin view Issues -->
			  
			  <!-- Admin view Trans.requests -->
                </ul>
                
            </div>
        
        </div>
        <!-- /.container -->
    </nav>
</body>
 <!-- JavaScript -->
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</html>

