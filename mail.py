import smtplib
from email.mime.text import MIMEText
from email.utils import formatdate

# TODO: smtp4dev.ext というのがあるらしい、テストに使えそう

FROM = 'asterisk.test@gmail.com'
TO = 'asterisk.test@gmail.com'
SUBJECT = 'Mail Test'
BODY = 'send mail by python'

def create_message(_from, _to, _subject, _body):
   msg = MIMEText(_body)
   msg['From'] = _from
   msg['To'] = _to
   msg['Subject'] = _subject
   msg['Date'] = formatdate()
   return msg

def send(_from, _to, _msg):
   """ localhost
   smtpobj = smtplib.SMTP()
   smtpobj.sendmail(_from, _to, _msg.as_string())
   smtpobj.close()
   """
   """ use service <google smtp>
   smtpobj = smtplib.SMTP('smtp.gmail.com', 587)
   smtpobj.ehlo()
   smtpobj.starttls()
   smtpobj.ehlo()
   smtpobj.login('asterisk.test@gmail.com', 'asterisk')
   smtpobj.sendmail(_from, [_to], _msg.as_string())
   smtpobj.close()
   """
   pass

if __name__ == '__main__':
   msg = create_message(FROM, TO, SUBJECT, BODY)
   send(FROM, TO, msg)

