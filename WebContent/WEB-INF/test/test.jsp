<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>学员管理</title>
<link rel="stylesheet" type="text/css" href="./css/all.css" />
<style type="text/css">
</style>
<script type="text/javascript">
	function addCheckForm() {
		var form = document.getElementById('addForm');
		var input_name = document.getElementById('addname').value;
		var input_birthday = document.getElementById('addbirthday').value;
		var input_age = document.getElementById('addage').value;
		var input_score = document.getElementById('addscore').value;
		var input_classid = document.getElementById('addclassid').value;
		if (input_name == "" || input_name == null) {
			alert("请输入学員姓名！！！");
			return false;
		}

		if (input_birthday == "" || input_birthday == null) {
			alert("请输入学員出生年月！！！");
			return false;
		}

		if (input_age == "" || input_age == null) {
			alert("请输入学員年龄！！！");
			return false;
		}

		if (input_score == "" || input_score == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		form.submit();
		return true;
	}

	function delCheckForm() {
		var form = document.getElementById('delForm');

		var input_id = document.getElementById("delid").value;
		if (input_id == "" || input_id == null) {
			alert("请输入削除学員id！！！");
			return false;
		}

		form.submit();
		return true;
	}

	function editCheckForm() {
		var form = document.getElementById('editForm');

		var input_id = document.getElementById('editid');
		var input_name = document.getElementById('editname');
		var input_birthday = document.getElementById('editbirthday');
		var input_age = document.getElementById('editage');
		var input_score = document.getElementById('editscore');
		var input_classid = document.getElementById('editclassid');
		if (input_id == "" || input_id == null) {
			alert("请输入学員id！！！");
			return false;
		}

		if (input_name == "" || input_name == null)
			alert("请输入学員姓名！！！");
		return false;
	}

	if (input_birthday == "" || input_birthday == null) {
		alert("请输入学員出生年月！！！");
		return false;
	}

	if (input_age == "" || input_age == null) {
		alert("请输入学員年龄！！！");
		return false;
	}

	if (input_score == "" || input_score == null) {
		alert("请输入学員成绩！！！");
		return false;
	}

	form.submit();
	return true;}
</script>
</head>
<body>
	< img src="./images/header.jpg" /> ${msg}
	<h1 align="center">学员信息管理</h1>

	<div id="all_comm" class="all">
		<h2 align="center">先生信息一览</h2>


		<table id="items">
			<tr>
				<td>id</td>
				<td>姓名</td>
				<td>course</td>
			</tr>

			<c:forEach items="${teachers}" var="teacher">
				<tr>
					<td id="id${teacher.id }">${teacher.id}</td>
					<td id="name${teacher.id }">${teacher.teachername}</td>
					<td id="birthday${teacher.id}">${teacher.course}</td>
				</tr>
			</c:forEach>
		</table>
		<table id="items">



			<tr>
				<td>id</td>
				<td>姓名</td>
				<td>出生年月</td>
				<td>年龄</td>
				<td>分数</td>
				<td>classid</td>
			</tr>
			<h2 align="center">学员信息一览</h2>
			<c:forEach items="${students}" var="student">
				<tr>
					<td id="id${student.id }">${student.id}</td>
					<td id="name${student.id }">${student.name}</td>
					<td id="birthday${student.id}">${student.birthday}</td>
					<td id="age${student.id }">${student.age}</td>
					<td id="score${student.id}">${student.score}</td>
					<td id="classid${student.id}">${student.classid}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<div id="add_comm" class="all" align="left">
		<h2>查找学员</h2>
		<form action="queryByName" method="post">
			<input type="text" placeholder="姓名" name="name"> <input
				type="submit" value="查找学员">