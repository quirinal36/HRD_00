<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<h4 align="center">수강생 수정</h4>
		<form name="frm" method="post" action="updateStudentsProc.jsp">
			<input type="hidden" name="student_no" value="<%=student_no%>"/>
			<table width="70%" align="center" border=1>
				<tr>
					<td align="center" bgcolor="#FFFF99">이름</td>
					<td><input type="text" name="student_name" value="<%=student_name%>"></td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFF99">주소</td>
					<td><input type="text" name="student_addr" size="50" value="<%=student_addr%>"></td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFF99">연락처</td>
					<td><input type="text" name="student_phone" value="<%=student_phone%>"></td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFF99">생년월일</td>
					<td><input type="text" name="student_birth" value="<%=student_birth%>"></td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFF99">메일주소</td>
					<td><input type="text" name="student_email" value="<%=email[0]%>">@<input type="text" name="student_email2" value="<%=email[1]%>">
						<select name="email_sel"  id="email_sel" onchange="emailCheck()" >
								<option value="">선택</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="">직접입력</option>
						</select>
						<script>
							//document.frm.email_sel.value="<%=email[1]%>";
						</script>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFF99" >아디</td>
					<td><input type="text" name="student_id" value="<%=student_id%>"></td>
				</tr>	
				<tr>
					<td align="center" bgcolor="#FFFF99">비밀번호</td>
					<td><input type="text" name="student_pw" value="<%=student_pw%>"></td>
				</tr>				

			</table>
			<table width="80%" align="center" border=0>
				<tr>
					<td align="center"><input type="button" value="등록" onclick="regCheck();"> &nbsp;&nbsp;&nbsp;
					<input type="button" value="조회" onclick="location.href='getStudents.jsp'"></td>
				</tr>
			</table>
		</form>
	</section>