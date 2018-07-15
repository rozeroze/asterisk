<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Contact - {{ obj['site'] }} </title>
    % from main import partial_style, partial_script
    {{ !partial_style() }}
    <link rel="stylesheet" type="text/css" href="{{ obj['host'] }}/static/css/contact.css">
    {{ !partial_script() }}
    <script type="text/babel" src="{{ obj['host'] }}/static/js/contact.js"></script>
</head>
<body>

    <!-- header bar -->
    % from main import partial_header
    {{ !partial_header() }}

    <!-- breadcrumb -->
    <ul id="asterisk-breadcrumb" class="cm-breadcrumb">
        <li><a href="{{ obj['host'] }}">Top</a></li>
        <li><a href="{{ obj['host'] }}/contact">Contact</a></li>
    </ul>

    <!-- contact -->
    <div id="asterisk-contact">
        <form id="asterisk-contact-mail-form" method="post" action="/contact/mail">
            <div class="vertical">
                <div class="input horizon">
                    <div class="header">Name</div>
                    <input type="text" name="name" placeholder="your name" required />
                </div>
                <div class="input horizon">
                    <div class="header">Mail</div>
                    <input type="email" name="mail" placeholder="asterisk@test.jp" required />
                </div>
                <div class="input horizon">
                    <div class="header">Title</div>
                    <input type="text" name="title" placeholder="Contact Mail: Asterisk" required />
                </div>
                <div class="input horizon">
                    <div class="header">Comment</div>
                    <textarea name="comment"placeholder="this is comment" required></textarea>
                </div>
            </div>
            <div id="asterisk-contact-buttons">
                % _line = 'line' if obj['theme'] == 'dark' else ''
                <button class="cm-btn primary {{ _line }}" type="submit" name="action">Send</button>
                <button class="cm-btn warning {{ _line }}" type="reset" name="action">Reset</button>
                <!-- MailTo
                <button class="cm-btn success {{ _line }}" onclick="location.href='mailto:{{ obj['mail'] }}'" >MailTo</button>
                -->
            </div>
        </form>
    </div>

    <!-- footer -->
    % from main import partial_footer
    {{ !partial_footer() }}

</body>
</html>
