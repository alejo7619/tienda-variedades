

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="estilonomina.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Registro</title>
    </head>
    <body>
        
        <h1>BODEGAS SAN CARLOS</h1>
        
        
        <p class="titulo">Nomina Empleados</p>
        
        
        <form class="conten">
            
            <input type="text" name="Nombre Empleado"> 
            <input type="text" name="Salario Basico"> 
            <input type="text" name="Horas Extras Diurnas"> 
            <input type="text" name="Horas Nocturnas"> 
            <input type="text" name="Horas Dominicales"> 
            <input type="text" name="Horas Festivas"> 
            <input type="text" name="Dias No Laborados"> 
            <input type="text" name="Parafiscales"> 
             <input type="text" name="imprimir">
            
            <input type="Submit" name="btn" value="Resultado"> 
            
           
            
            
        </form>
        
      
        <%!String n;%>
        <%!double n1,n2,n3,n4,n5,n6,n7,n8,n9,r;%>
        <%!double d,h,hed,hed1,hen,hen1,hedm,hedm1,hef,hef1,t,sb,dt2,dt,dnl,tt,tdt;%>
        
        
        
       
    </body>
    
    
    <%
          if(request.getParameter("btn")!=null){  
          
          n=request.getParameter("Nombre Empleado");        
          n1=Double.parseDouble(request.getParameter("Salario Basico"));
          n2=Double.parseDouble(request.getParameter("Horas Extras Diurnas"));
          n3=Double.parseDouble(request.getParameter("Horas Nocturnas"));
          n4=Double.parseDouble(request.getParameter("Horas Dominicales"));
          n5=Double.parseDouble(request.getParameter("Horas Festivas"));
          n6=Double.parseDouble(request.getParameter("Dias No Laborados"));
          n7=Double.parseDouble(request.getParameter("Parafiscales"));
          
        d=n1/30;
        h=d/8;
        hed=(h*25)/100;
        hed1=(hed+h)*n2;
        hen=(h*35)/100;
        hen1=(hen+h)*n3;
        hedm=(h*100)/100;
        hedm1=(hedm+h)*n4;
        hef=(h*75)/100;
        hef1=(hef+h)*n5;
        t=hef1+hedm1+hen1+hed1+n1;
        dnl=d*n6;
        dt=t-dnl;
        
        dt2=(dt*n7)/100;
        tdt=dt2+dnl;
        tt=dt-dt2;       
        r=tt;
          
        
          
        

          
          }
         
        %>
        <label> Nombre Empleado <%= n %></label><!-- comment -->
        <label> Salario Basico <%= n1 %></label><!-- comment -->
        <label> Horas Extras Diurnas <%= n2 %></label><!-- comment -->
        <label> Horas Nocturnas <%= n3 %></label><!-- comment -->
        <label> Horas Dominicales <%= n4 %></label><!-- comment -->
        <label> Horas Festivas <%= n5 %></label><!-- comment -->
        <label> Dias No Laborados <%= n6 %></label><!-- comment -->
        <label> Parafiscales <%= n7 %></label><!-- comment -->
        
        <label> Total a Pagar es <%= tt %></label>
        
    
    
    
    
    
</html>

