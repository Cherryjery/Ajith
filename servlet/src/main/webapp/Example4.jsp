<HTML>
    <HEAD> <TITLE> Example on Declaration </TITLE> </HEAD>
    <BODY> 
     <%! 
         private int  fact(int n) { return n >0 ? n* fact(n-1): 1 ;   }  
      %>
        Testing  function
      <TABLE BORDER=3>
         <TR> <TH>Value</TH><TH>Factorial</TH> </TR>
         <% 
          for (int i=0; i<10; i++) { %>
            <TR>
               <TD><%= i %> </TD>
               <TD><%= fact(i)%></TD>
             </TR>
           <%}%> 
       </TABLE>
      </BODY>
 </HTML>

