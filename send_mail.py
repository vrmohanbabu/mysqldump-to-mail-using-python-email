import smtplib
from email.message import EmailMessage

import sys

filepath = str(sys.argv[1])
email = EmailMessage()
email['from'] = 'sender'
email['to'] = 'receiver@gmail.com'
email['subject'] = "Mysql dump"

email.set_content("The dump file created at " + str(sys.argv[3]))


with open(filepath, 'rb') as fp:
	mysql_data = fp.read()
	email.add_attachment(mysql_data, maintype='sql', subtype='sql', filename=str(sys.argv[2]))


with smtplib.SMTP(host='smtp.gmail.com', port=587) as smtp:
        smtp.ehlo()
        smtp.starttls()
        smtp.login('sender@gmail.com', 'sender_password')
        smtp.send_message(email)
