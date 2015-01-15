

<%@page import="com.pro.User"%>
<%@page import="com.pro.Party"%>
<%@page import="com.pro.Candidate"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="com.pro.State"%>
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
    <link href="css/css.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <style>
        .demo select {
            border: 0 !important;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: #999999 url(img/demo/select-arrow.png) no-repeat 90% center;
            width: 175px;
            text-indent: 0.01px;
            text-overflow: "";
            color: #FFF;
            border-radius: 15px;
            padding: 5px;
            box-shadow: inset 0 0 5px rgba(000,000,000, 0.5);
        }
        .demo select.balck {
            background-color: #000;
        }
        .demo select.option3 {
            border-radius: 10px 0;
        }
    </style>
</head>

<%
    Session s = HibernateUtil.getSessionFactory().openSession();

%>

<body class="templatemo-bg-image-2">

    </br></br></br></br>


    <div class="demo">
        <div id="wrapper">
            <section class="clearfix"></br></br></br></br>
                <h2>Thank You for exercising your right to vote !</h2>
                </br>
                </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <%                  
                    int i = Integer.parseInt(request.getParameter("candidate"));

                    Candidate c = (Candidate) s.get(Candidate.class, i);

                    c.setVoteN(c.getVoteN() + 1);

                    Party p = (Party) s.get(Party.class, c.getParty().getRegId());

                    p.setVoteN(p.getVoteN() + 1);
                    
                    User u=(User)s.get(User.class,(Integer)session.getAttribute("user"));
                    
                    u.setVoted("Y");

                    s.beginTransaction().commit();

                    %>
                    
                 <div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Logout" onClick="window.location='logout.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	   



            </section>
        </div>
    </div>
</body>