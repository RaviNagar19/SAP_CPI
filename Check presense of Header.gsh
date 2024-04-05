import com.sap.gateway.ip.core.customdev.util.Message

def Message processData(Message message) {
    def Mail_To = "Mail_To"
    if (!message.getHeaders().containsKey(Mail_To)) {
        message.setHeader(Mail_To, "ravi.nagar@avantorsciences.com")
    }
    message
}