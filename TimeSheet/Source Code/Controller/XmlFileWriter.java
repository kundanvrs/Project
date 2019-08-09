package time.sheet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;


import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;


@WebServlet("/XmlFileWriter")
public class XmlFileWriter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public XmlFileWriter() {
        super();
        
    }


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String project1=request.getParameter("project");
		String dates=request.getParameter("dates");
		String names=request.getParameter("names");
		String name2=request.getParameter("name2");
		String appt=request.getParameter("appt");
		String wbs=request.getParameter("wbs");
		String net=request.getParameter("net");
		String recive=request.getParameter("recive");
		String disc=request.getParameter("disc");
		String att=request.getParameter("att");
		String repotime=request.getParameter("repotime");
		String activity=request.getParameter("activity");
		String attype=request.getParameter("attype");
		String operate=request.getParameter("operate");
		String suboperate=request.getParameter("suboperate");
		String operatext=request.getParameter("operatext");
		String shortxt=request.getParameter("shortxt");
		
		pw.print(project1);
		
		try {
	         DocumentBuilderFactory dbFactory =
	         DocumentBuilderFactory.newInstance();
	         DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	         Document doc = dBuilder.newDocument();
	         
	      
	        
	         String xmlFile=names+" "+dates;
	         pw.print(xmlFile);
	         
	         Element rootElement = doc.createElement("timesheet");
	         doc.appendChild(rootElement);
	         
	         Element empname = doc.createElement("empname");
	         rootElement.appendChild(empname);
	         Attr attr = doc.createAttribute("name");
	         attr.setValue(names);
	         empname.setAttributeNode(attr);
	         
	         Element project = doc.createElement("project");
	         project.appendChild(doc.createTextNode(project1));
	         empname.appendChild(project);
	         
	         Element name = doc.createElement("name");
	         name.appendChild(doc.createTextNode(names));
	         empname.appendChild(name);
	         
	         Element wbsdummy = doc.createElement("WBSDummy");
	         wbsdummy.appendChild(doc.createTextNode(wbs));
	         empname.appendChild(wbsdummy);
	         
	         
	         TransformerFactory transformerFactory = TransformerFactory.newInstance();
	         Transformer transformer = transformerFactory.newTransformer();
	         DOMSource source = new DOMSource(doc);
	         StreamResult result = new StreamResult("D:\\TimeSheet\\"+xmlFile+".xml");
	         transformer.transform(source, result);
	         
	         // Output to console for testing
	         StreamResult consoleResult = new StreamResult(System.out);
	         transformer.transform(source, consoleResult);
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
