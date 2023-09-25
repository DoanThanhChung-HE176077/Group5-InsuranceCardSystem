<%-- 
    Document   : Admin_dashboard
    Created on : Sep 20, 2023, 11:31:26 AM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/admin_dashboard.css"/>
        <title>JSP Page</title>
        
        <style>
            #sidebar {
                position: fixed ;
                width: 263px;
                height: 100%;
                background: #000;
                left: -300px;
                transition: .4s;
                margin-top: 89px
                  
            }

            #sidebar .toggle-btn {
                position: absolute;
                bottom: 100px;
                left: 330px;
            }

            .toggle-btn span {
                width: 45px;
                height: 4px;
                background: #000;
                display: block;
                margin-top: 4px;
            }

            #sidebar.active {
                left: 0;
                
            }
            
            #sideitem{
                display: flex;
                align-items: center;
                justify-content: center;
                
            }
        </style>
    </head>
    <body>
        
        
        
        
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>
        <div class="side-menu" id="sidebar">
            <div class="toggle-btn" onclick="show()">
                <span></span>
                <span></span>
                <span></span>
            </div>
            
            <div class="brand-name">
                <h1>Brand</h1>
            </div>
            <ul class="sideitem">
                <li><img src="dashboard (2).png" alt="">&nbsp; <span>Dashboard</span> </li>
                <li><img src="reading-book (1).png" alt="">&nbsp;<span>Students</span> </li>
                <li><img src="teacher2.png" alt="">&nbsp;<span>Teachers</span> </li>
                <li><img src="school.png" alt="">&nbsp;<span>Schools</span> </li>
                <li><img src="payment.png" alt="">&nbsp;<span>Income</span> </li>
                <li><img src="help-web-button.png" alt="">&nbsp; <span>Help</span></li>
                <li><img src="settings.png" alt="">&nbsp;<span>Settings</span> </li>
            </ul>
        </div>
        <div class="container">


            <div class="content">
                <div class="cards">
                    <div class="card">
                        <div class="box">
                            <h1>2194</h1>
                            <h3>Students</h3>
                        </div>
                        <div class="icon-case">
                            <img src="students.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>53</h1>
                            <h3>Teachers</h3>
                        </div>
                        <div class="icon-case">
                            <img src="teachers.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>5</h1>
                            <h3>Schools</h3>
                        </div>
                        <div class="icon-case">
                            <img src="schools.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>350000</h1>
                            <h3>Income</h3>
                        </div>
                        <div class="icon-case">
                            <img src="income.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="content-2">
                    <div class="recent-payments">
                        <div class="title">
                            <h2>Recent Payments</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>School</th>
                                <th>Amount</th>
                                <th>Option</th>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>St. James College</td>
                                <td>$120</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                        </table>
                    </div>
                    <div class="new-students">
                        <div class="title">
                            <h2>New Students</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <tr>
                                <th>Profile</th>
                                <th>Name</th>
                                <th>option</th>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        
        <script>
            function show() {
                document.getElementById('sidebar').classList.toggle('active');
            }
        </script>
    </body>
</html>