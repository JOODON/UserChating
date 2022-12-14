<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP-실시간 회원 채팅 서비스</title>
    <meta name="viewport" content="width=device-width ,initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    <script src="src=https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.js"></script>

</head>
<body>
    <%
        String userID=null;
        if (session.getAttribute("userID")!=null){
            userID=(String) session.getAttribute("userID");
        }
    %>
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapse" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                    <a class="navbar-brand" href="index.jsp">실시간 회원제 채팅 서비스</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">메인</a></li>
                </ul>
                <%
                    if(userID==null){
                %>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="login.jsp" class="dropdown-toggle"
                               data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                로그인<span class="caret"></span>
                            </a>
                       </li>
                    </ul>
                <%
                    }else {
                %>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">회원관리<span class="caret"></span>
                        </a>
                    </li>
                </ul>
                <%
                    }
                %>
            </div>
        </nav>

</body>
</html>