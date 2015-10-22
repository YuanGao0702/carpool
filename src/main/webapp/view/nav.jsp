<nav id="myScrollspy" class="navbar navbar-inverse navbar-custom navbar-fixed-top" role="navigation">
    <div class="container-fluid">
    	<div class="navbar-header">
      		<a class="navbar-brand" href="#intro">CarPool</a>
    	</div>     
    	
        <div id="myNavbar" class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active" id="sign-in-li">
                    <a href="../carpool/view/register.jsp">Don't have an Account?</a>                 
                </li>                         
               	<li class="active" id="sign-in-li">
                    <a href="" data-toggle="modal" data-target="#myModal">Sign In</a>                 
                </li> 
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome!<b class="caret"></b></a>
                    <ul class="dropdown-menu">                
                        <li><a href="../carpool/view/account.jsp">My Account</a></li>
                        <li><a href="../carpool/view/user_profile.jsp">My Profile</a></li>             			
                        <li id="sign-out-li">
                            <a href="javascript:logout()">Sign Out</a>                 
                        </li>                      
                    </ul>
                </li>
              
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Sign In</h4>
                            </div>
                                                                        
                            <form action="javascript:login()">
                                <div class="modal-body">
                                	<div id="error" class="error">
                                		<p>Wrong Email or Password!</p>
                                	</div>
                                	<div class="text">
                                		<label for="session_email">Email</label>
	                                    <div class="input-group">
	                                        <span class="input-group-addon">
	                                            <i class="fa fa-envelope-o"></i>
	                                        </span>
	                                        <input type="text" name="userEmail"/>
	                                    </div>
                                	</div>
                                	<div class="text">
                                		<label for="session_password">Password</label>
	                                    <div class="input-group">
	                                        <span class="input-group-addon">
	                                            <i class="fa fa-key"></i>
	                                        </span>
	                                        <input type="password" name="userPwd"/>
	                                    </div> 	
                                	</div>                                                                       					    							    		
							    		<!-- <tr>
							    			<td>User Gender:</td>
							    			<td><input type="radio" name="userGender" value="male"/>Male</td>
							    			<td><input type="radio" name="userGender" value="female"/>Female</td>
							    		</tr> -->							    	
                              	</div>

	                            <div class="modal-footer">
	                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                                <input type="submit" class="btn btn-primary" value="Sign In"/>     	                                                 
	                            </div>
                            </form>
                            
                        </div>
                    </div>
                </div>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>