import re


"""
Summary: Markdown to Html Converter
Author: rozeroze
"""

"""
TODO: filepathをもらって、読込を行う関数の定義
TODO: 改行毎のリストではなく、空行毎の段落で操作
"""

# _sample (markdown) {{{
_sample = '''
### title-test

> this is description

##### list 1

* test1
* test2
  * test2-1
  * test2-2
* test3

##### list 2

 - test
 - test
   - test

##### list 3

+
 +

##### 


'''
# }}}

def fileread(path):
   with open(path, 'r', encoding='utf_8_sig') as _md:
      return _md.read()

def convert(md):
   _html = ''
   for _line in md:
      _html = parse(_line)
   print(_html)
   return _html

def parse(line):
   _line = line.strip()
   if re.match(r'^#', _line):
      _h = _line.split()[0].count('#')
      _h = 6 if _h > 6 else _h
      _line = ' '.join(_line.split()[1:])
      return '<h{_h}>{_line}</h{_h}>'.format(_h=_h, _line=_line)
   if re.match(r'^[-+*]', _line):
      pass
   return _line

