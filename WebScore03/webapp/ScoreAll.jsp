<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, com.entity.*"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%		
ArrayList<Score> sm = (ArrayList<Score>) request.getAttribute("all");
	%>
	<table border=1 width="90%">
		<tr>
			<th>�̸�</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>�� ��</th>
			<th>���</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<%
			for (Score res : sm) {
		%>
		<tr>
			<td><%=res.getName()%></td>
			<td><%=res.getKor()%></td>
			<td><%=res.getEng()%></td>
			<td><%=res.getMat()%></td>
			<td><%=res.getTot()%></td>
			<td><%=res.getAvg()%></td>
			<td><%=res.getGrade()%></td>
			<!-- ScoreFind ������ ���Ͽ� View���� �Է��� �޾Ƽ� �����Ѵ�. -->
			<td><a href="ScoreFind?name=<%=res.getName()%>"> ���� </a></td>
			<td><a href="ScoreDelete?name=<%=res.getName()%>"> ���� </a></td>
		</tr>
		<%
			}
		%>
		<tr>
			<td align="center" colspan="9">
			<a href="ScoreInsert.html">�Է�
			</a></td>
		</tr>
	</table>
</body>
</html>












