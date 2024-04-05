import com.sap.gateway.ip.core.customdev.util.Message;

def Message processData(Message message) {
    
	def messageLog = messageLogFactory.getMessageLog(message);
	   if(messageLog != null){
		//Read business Key from Header
		def FileName = message.getHeaders().get("CamelFileName");

		//Set business Key as Custom Header
		if (FileName != null)
			{
				messageLog.addCustomHeaderProperty("File Name", FileName);
			}
	   }
	return message;
}
