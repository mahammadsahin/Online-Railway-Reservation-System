<%@page import="java.sql.*" errorPage="error.jsp" %>
    <%! PreparedStatement ps; ResultSet rs; %>
        <% Connection c=(Connection)application.getAttribute("connection"); %>
            <!DOCTYPE html>
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>SUNRISE HOTEL</title>
                <!-- Bootstrap Styles-->
                <link href="assets/css/bootstrap.css" rel="stylesheet" />
                <!-- FontAwesome Styles-->
                <link href="assets/css/font-awesome.css" rel="stylesheet" />
                <!-- Morris Chart Styles-->

                <!-- Custom Styles-->
                <link href="assets/css/custom-styles.css" rel="stylesheet" />
                <!-- Google Fonts-->
                <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
                <!-- TABLE STYLES-->
                <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
            </head>

            <body>
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper">
                    <div id="page-inner">


                        <% String sql="SELECT * FROM contact" ; 
                        ps=c.prepareStatement(sql); 
                        rs=ps.executeQuery(); %>
                            <div class="row">
                                <div class="col-md-12">
                                    <!-- Advanced Tables -->
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover"
                                                    id="dataTables-example">
                                                    <thead>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>Phone Number</th>
                                                            <th>Email</th>
                                                            <th>Date</th>
                                                            <th>Status</th>
                                                            <th>Approval</th>
                                                            <th>Remove</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <% while(rs.next()) { int id=rs.getInt("id"); if(id % 2==1 ) {%>
                                                            <tr class='gradeC'>
                                                                <td>
                                                                    <%=rs.getString("name")%>
                                                                </td>
                                                                <td>
                                                                    <%=rs.getString("phoneno")%>
                                                                </td>
                                                                <td>
                                                                    <%=rs.getString("email")%>
                                                                </td>
                                                                <td>
                                                                    <%=rs.getString("cdate")%>
                                                                </td>
                                                                <td>
                                                                    <%=rs.getString("approval")%>
                                                                </td>
                                                                <td><a href="newsletter.jsp?eid=<%=id%>" <button
                                                                        class='btn btn-primary'> <i
                                                                            class='fa fa-edit'></i> Permission</button>
                                                                </td>
                                                                <td><a href="newsletterdel.jsp?eid=<%=id%>" <button
                                                                        class='btn btn-danger'> <i
                                                                            class='fa fa-edit'></i> Delete</button></td>
                                                            </tr>
                                                            <%} else {%>
                                                                <tr class='gradeU'>
                                                                    <td>
                                                                        <%=rs.getString("name")%>
                                                                    </td>
                                                                    <td>
                                                                        <%=rs.getString("phoneno")%>
                                                                    </td>
                                                                    <td>
                                                                        <%=rs.getString("email")%>
                                                                    </td>
                                                                    <td>
                                                                        <%=rs.getString("cdate")%>
                                                                    </td>
                                                                    <td>
                                                                        <%=rs.getString("approval")%>
                                                                    </td>
                                                                    <td><a href="newsletter.jsp?eid=<%=id%>" <button
                                                                            class='btn btn-primary'> <i
                                                                                class='fa fa-edit'></i>
                                                                            Permission</button></td>
                                                                    <td><a href="newsletterdel.jsp?eid=<%=id%>" <button
                                                                            class='btn btn-danger'> <i
                                                                                class='fa fa-edit'></i> Delete </button>
                                                                    </td>
                                                                </tr>

                                                                <%} } %>

                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </div>
                                    <!--End Advanced Tables -->
                                </div>
                            </div>
                            <!-- /. ROW  -->

                    </div>

                </div>


                </div>
                <!-- /. PAGE INNER  -->
                </div>
                <!-- /. PAGE WRAPPER  -->
                <!-- /. WRAPPER  -->
                <!-- JS Scripts-->
                <!-- jQuery Js -->
                <script src="assets/js/jquery-1.10.2.js"></script>
                <!-- Bootstrap Js -->
                <script src="assets/js/bootstrap.min.js"></script>
                <!-- Metis Menu Js -->
                <script src="assets/js/jquery.metisMenu.js"></script>
                <!-- DATA TABLE SCRIPTS -->
                <script src="assets/js/dataTables/jquery.dataTables.js"></script>
                <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
                <script>
                    $(document).ready(function () {
                        $('#dataTables-example').dataTable();
                    });
                </script>
                <!-- Custom Js -->
                <script src="assets/js/custom-scripts.js"></script>


            </body>

            </html>