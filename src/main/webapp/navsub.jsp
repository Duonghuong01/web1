<%--
  Created by IntelliJ IDEA.
  User: THU HUONG
  Date: 9/15/2021
  Time: 12:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--giang--%>
<fmt:setLocale value="${sessionScope.LANG}"/>
<fmt:setBundle basename="mlang"/>
<%--giang--%>

<div class="container">

    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-light lighten-3 mt-3 mb-5 " style="background-color: #aef6f6">


        <!-- Navbar brand -->
        <span class="navbar-brand" style="color:#0209f3 ;font-size:28px; "><fmt:message key="b.category" />:</span>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
                aria-controls="basicExampleNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

            <!-- Links -->
            <ul class="navbar-nav mr-auto">

                <c:forEach items="${listCC}" var="o">
                    <li class="nav-item ">
                        <a class="nav-link ${tag == o.cid ? "active":""} " style="color:#3333ee;font-size: 20px; " href="category?cid=${o.cid}">${o.cname}</a>
                    </li>
                </c:forEach>




            </ul>
            <!-- Links -->

            <form class="form-inline" style="margin-top: 1px; margin-bottom: 1px;weight:70px;" action="search" method="get">
                <div class="md-form my-0">
                    <input class="form-control mr-sm-2" value="${txts}" name="txt" type="text" placeholder="Search" aria-label="Search">
                    <button class="btn btn-lg btn-success" type="submit">Search</button>
                </div>

            </form>
        </div>
        <!-- Collapsible content -->

    </nav>
</div>