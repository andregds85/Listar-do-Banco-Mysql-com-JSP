<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>   
 

<%@ page language='java' import='conexao.conecta' %>
    
<%  


	String nome	 = request.getParameter("nome");
	String idade = request.getParameter("idade");

		try {
		
			Connection con = conecta.getConexao();
			String sql = "insert into pessoa(nome,idade)values(?,?)";
			
			PreparedStatement smtp = con.prepareStatement(sql);
			
			smtp.setString(1, nome);
			smtp.setString(2, idade);

			smtp.execute();
			smtp.close();
			con.close();
			
		}catch(Exception e){
			
			out.print("Deu Erro"+e);
			
		}

			
%>  

		

<script>
alert("Cadastro Efetuado com Sucesso");
</script>	



<a href="https://www.youtube.com/watch?v=WhaeyhACKdg">
Video Base</a>

<br><br>	
	
		
		
<script>
    document.write('<a href="' + document.referrer + '">Voltar Para Pï¿½gina</a>');
</script>	
			
			
			
			
		