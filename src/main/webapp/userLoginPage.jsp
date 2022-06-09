<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List,UserNotesHandle.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="styles/style3.css" rel="stylesheet">
	<script src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src = "js/jscript3.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row my-2">
			<div class="col-12 text-end">
				<h3><a href="Logout.jsp" class="btn btn-outline-danger btn-md">Log Out</a></h3>
			</div>
		</div>
		<div class="row justify-content-center my-3">
			<div class="col-lg-3">
				<div class="card">
					<img src="https://picsum.photos/300/200" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title">Hello ${name}</h3>
						<p class="card-text">Welcome to our website To-Do-List.<br>Here you can fine some information regarding out website,</p>
						<a href="about.html" class="card-link btn btn-primary">About</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row my-2">
			<div class="col-12">
				<div class="card">
					<div class="card-header"><h3>Your Notes</h3></div>
					<ul class="list-group list-group-flush">
						<%  
							HttpSession hs = request.getSession();
							List<NoteInfo> notes = (List<NoteInfo>)hs.getAttribute("notes");
							if(notes==null)
							{
								out.print("Your session is expired!! please log in again!!");
							}
							else if(notes.size()!=0)
							{
								for(int i=0;i<notes.size();i++)
								{
									out.print("<li class=\"list-group-item\"><div id=\"note"+i+"\"><figure><blockquote class=\"blockquote\"><p>"+notes.get(i).getNote()+"</p></blockquote>"+"<figcaption class=\"blockquote-footer text-muted\">Date added, "+notes.get(i).getDate()+"</figcaption></figure>");
									out.print("<div style=\"display:flex;\"><form action=\"deleteNote\" method=\"post\"><input type=\"hidden\" name=\"noteid\" value=\""+notes.get(i).getNoteid()+"\"><button class=\"btn btn-danger text-end delete\" type=\"submit\">Delete</button></form>");
									out.print("<button number=\""+i+"\" type=\"button\" class=\"mx-2 btn btn-secondary edit\">Edit</button></div></div>");
									out.print("<div class=\"noteedit\" id=\"editnote"+i+"\"><form id=\"editform"+i+"\" action=\"updateNote\" method=\"post\"><input type=\"hidden\" name=\"noteid\" value=\""+notes.get(i).getNoteid()+"\">");
									out.print("<textarea form=\"editform"+i+"\" rows=\"3\" maxlength=\"500\" name=\"updatednote\" required>"+notes.get(i).getNote()+"</textarea>");
									out.print("<br><button class=\" btn btn-success\" type=\"submit\">Save</button><button number=\""+i+"\" type=\"button\" class=\"mx-2 btn btn-danger cancel\">Cancel</button></form></div></li>");
								}
							}
							else
							{
								out.println("<li class=\"list-group-item\">You do not have any notes!!</li>");
							}
						%>
					</ul>
					<div class="card-body">
						<form action="AddNote" class="card-text" id="noteform" method="post">
							<textarea name="note" form="noteform" rows="3" maxlength="500" placeholder="Enter your note..." style="width:40%;"></textarea><br>
							<button type="submit" formaction="AddNote" class="btn btn-outline-info">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>