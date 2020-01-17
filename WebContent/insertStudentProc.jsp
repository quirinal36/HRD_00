<%@page import="www.jca.com.DBconn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//2단계
	Connection conn = new DBconn().getConnection();
	//3:sql구문
	String sql = "insert into STUDENT_TBL_01 (STUDENT_NAME,STUDENT_ADDR,STUDENT_PHONE,STUDENT_BIRTH,STUDENT_EMAIL,STUDENT_ID,STUDENT_PW ) " +
                  	" values(?, ?, ?, ?, ?, ?, ?) ";
	//4: statement 실행
	String email = request.getParameter("student_email") +"@"+ request.getParameter("student_email2");
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("student_name"));
	pstmt.setString(2, request.getParameter("student_addr"));
	pstmt.setString(3, request.getParameter("student_phone"));
	pstmt.setString(4, request.getParameter("student_birth"));
	pstmt.setString(5, email);
	pstmt.setString(6, request.getParameter("student_id"));
	pstmt.setString(7, request.getParameter("student_pw"));
	int r = pstmt.executeUpdate();
	//5:결과 처리
	System.out.print(r +"건이 등록됨");	
	//6:연결 해제
	conn.close();
	response.sendRedirect("getStudents.jsp");
%>
<script>
	// alert("처리완료");
	//location.href="getStccks.jsp";
</script>