<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.pro.Candidate"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<head>

    <title>ONPS</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">


</head>
<%
    int max = 0, id = 0;
    Session s = HibernateUtil.getSessionFactory().openSession();
    Query query = s.createQuery("from Candidate");
    List l = query.list();
    Iterator i = l.iterator();
    while (i.hasNext()) {
        Candidate c = (Candidate) i.next();
        if (c.getConstituency().getCid() == Integer.parseInt(request.getParameter("const"))) {
            if (max < c.getVoteN()) {
                max = c.getVoteN();
                id = c.getVoterId();
            }
        }
    }
    Candidate c = (Candidate) s.get(Candidate.class, id);
%>

<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="col-md-12">			

            <div class="form-group">
                <div class="col-md-12">
                    <h1 class="margin-bottom-15"><%=c.getName()%> of <%=c.getParty().getName()%> has won by <%=c.getVoteN()%> in <%=c.getConstituency().getName()%> !</h1></br></br>

                </div>
            </div>
            </br>
            </br></br></br></br></br></br></br></br></br></br></br></br>

            <table align="center">
                <tr> 

                    <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Logout" onClick="window.location = 'logout.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	</td>
            </table>                        
        </div>
    </div>
    </br></br>
    <h4 align="center">${requestScope.msg}</h4>
</body>