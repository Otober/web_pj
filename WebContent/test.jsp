<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		setDateBox();
	});

	// select box ���� , �� ǥ��
	function setDateBox() {
		var dt = new Date();
		var year = "";
		var com_year = dt.getFullYear();
		// ���� �ѷ��ֱ�
		$("#YEAR").append("<option value=''>�⵵</option>");
		// ���� �������� -1����� +5���� �����ش�.
		for (var y = (com_year - 1); y <= (com_year + 5); y++) {
			$("#YEAR").append(
					"<option value='"+ y +"'>" + y + " ��" + "</option>");
		}
		// �� �ѷ��ֱ�(1������ 12��)
		var month;
		$("#MONTH").append("<option value=''>��</option>");
		for (var i = 1; i <= 12; i++) {
			$("#MONTH").append(
					"<option value='"+ i +"'>" + i + " ��" + "</option>");
		}
	}
</script>
<body>
	<tr>
		<td><select name="YEAR" id="YEAR" title="�⵵" class="select w80"></select> <select name="MONTH" id="MONTH" title="��" class="select w80"></select></td>
	</tr>
</body>

</html>