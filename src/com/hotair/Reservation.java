package com.hotair;

import java.io.IOException;
import java.util.Vector;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.MessageConsumer;
import javax.jms.MessageProducer;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueSession;
import javax.jms.TextMessage;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.sun.org.apache.xerces.internal.parsers.DOMParser;
import com.tibco.tibjms.TibjmsQueueConnectionFactory;

public class Reservation {
	
	 public String BookFlight(String url, String userName, String password, String requestQueueName, String replyQueueName, String msg)
      {

       TextMessage requestMessage= null;
       TextMessage message=null;
       
       String responseMsg = null;

       MessageProducer msgProducer  = null;
       Destination destination  = null;
       Destination replyQueue = null;
       Vector   data= new Vector();
       MessageConsumer msgConsumer = null;
       QueueConnection connection=null;
       data.addElement(msg);


		try {

           QueueConnectionFactory factory = new TibjmsQueueConnectionFactory(url);
           connection = factory.createQueueConnection(userName,password);
           QueueSession session1 = connection.createQueueSession(false,javax.jms.Session.AUTO_ACKNOWLEDGE);
           destination = session1.createQueue(requestQueueName);
           replyQueue = session1.createQueue(replyQueueName);
           msgProducer = session1.createProducer(null);
           msgConsumer = session1.createConsumer(replyQueue);
           for (int i=0; i<data.size(); i++)
            {
          
             requestMessage = session1.createTextMessage();
             String text = (String)data.elementAt(i);
             requestMessage.setText(text);
            }
            requestMessage.setJMSReplyTo(replyQueue);
            connection.start();
            msgProducer.send(destination, requestMessage);
            message = (TextMessage) msgConsumer.receive(1000);
            responseMsg = message.getText();
            
            connection.close();

            
           }
           
        catch(JMSException e)
           {
             e.printStackTrace();
             System.exit(0);
           }
		return responseMsg;
        

 	    }
	 
	 public String responseParser(String msg)
     {
		 String val = "";
		 try 
         {
          DOMParser parser = new DOMParser();
          {
          parser.parse(new InputSource(new java.io.StringReader(msg)));
          org.w3c.dom.Document doc = parser.getDocument();
          String messag = doc.getDocumentElement().getTextContent();

          val = messag.replaceAll("Success"," ");
  
           }
         }

          catch (SAXException ex1)
           {
            ex1.printStackTrace();
           }
             catch (IOException ex2)
              {
          ex2.printStackTrace();
             }
           catch (Exception e)
           {
           e.printStackTrace();
          }
		return val;
     }
   }


