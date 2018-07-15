from bottle import route, run, template, static_file, request, response, error
import sys
import markdown

### 共通変数
SITE = "Asterisk"
HOST = "http://localhost:8080"
MAIL = "rosettastone1886@gmail.com"
md = markdown.Markdown()

### 共通関数
def get_obj():
   return dict( site = SITE, host=HOST, mail=MAIL, theme=get_theme() )
def get_theme():
   _theme = request.get_cookie('theme')
   if (_theme not in ['light', 'dark']):
      _theme = 'light'
   response.set_cookie('theme', _theme, max_age=86400)
   return _theme

### partial
def partial_style():
   return template('partial/style', obj=get_obj())
def partial_script():
   return template('partial/script', obj=get_obj())
def partial_header():
   return template('partial/header', obj=get_obj())
def partial_footer():
   return template('partial/footer', obj=get_obj())
def partial_social():
   return template('partial/social', obj=get_obj())

# static file
@route('/static/js/<filename:path>')
def static_js(filename):
   return static_file(filename, root='./static/js')
@route('/static/css/<filename:path>')
def static_js(filename):
   return static_file(filename, root='./static/css')
@route('/static/img/<filename:path>')
def static_img(filename):
   return static_file(filename, root='./static/img')
@route('/data/articles.json')
def json_load():
   return static_file('articles.json', root='./data')
@route('/data/<filename:path>')
def markdown_load(filename):
   with open('data/' + filename, 'r', encoding='utf_8_sig') as _md:
      return md.convert(_md.read())

# route
@route('/')
def top():
   return template('top', obj=get_obj())

@route('/article')
@route('/article/')
def articles():
   return template('articles', obj=get_obj())

@route('/article/<filename:path>')
def article(filename):
   _article = dict( filename = filename )
   return template('article', obj=get_obj(), article=_article)

@route('/contact')
@route('/contact/')
def contact():
   return template('contact', obj=get_obj())

@route('/config')
@route('/config/')
def config():
   return template('config', obj=get_obj())

# contact mail
@route('/contact/mail', method='post')
def mail():
   return """
<h3>Feature:mail() is developing! Not Sent Yet!</h3>
<p>name: {name}</p>
<p>mail: {mail}</p>
<p>title: {title}</p>
<p>comment: {comment}</p>
<br />
<p>Are you OK? <a href="mailto:{admin}?subject={title}&cc={mail}&body={comment}">click here</a></p>
""".format(
      admin = MAIL,
      name = request.forms.get('name'),
      mail = request.forms.get('mail'),
      title = request.forms.get('title'),
      comment = request.forms.get('comment'))

# config save
@route('/config/save', method='post')
def save():
   _theme = request.forms.get('asterisk-theme')
   if (_theme not in ['light', 'dark']):
      _theme = 'light'
   response.set_cookie('theme', _theme, max_age=86400)
   return """
<h3>Success: Save Config!</h3>
<p>theme: {theme}</p>
""".format(theme=_theme)

# error
@error(404)
def error404(error):
   return template('404', obj=get_obj())

# favicon
@route('/favicon.ico')
def getfavicon():
   return static_file('favicon.ico', root='./')

if __name__ == "__main__":
   run(host='localhost', port=8080, reloader=True)

