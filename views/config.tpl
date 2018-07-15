<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Config - {{ obj['site'] }} </title>
    % from main import partial_style, partial_script
    {{ !partial_style() }}
    <link rel="stylesheet" type="text/css" href="{{ obj['host'] }}/static/css/config.css">
    {{ !partial_script() }}
    <script type="text/babel" src="{{ obj['host'] }}/static/js/config.js"></script>
</head>
<body>

    <!-- header bar -->
    % from main import partial_header
    {{ !partial_header() }}

    <!-- breadcrumb -->
    <ul id="asterisk-breadcrumb" class="cm-breadcrumb">
        <li><a href="{{ obj['host'] }}">Top</a></li>
        <li><a href="{{ obj['host'] }}/config">Config</a></li>
    </ul>

    <!-- config -->
    <div id="asterisk-config">
        <form id="asterisk-config-form" method="post" action="/config/save">
            <input type="radio" id="asterisk-theme-light" name="asterisk-theme" value="light" checked>
            <label for="asterisk-theme-light">light</label>
            <input type="radio" id="asterisk-theme-dark" name="asterisk-theme" value="dark">
            <label for="asterisk-theme-dark">dark</label>
            % _line = 'line' if obj['theme'] == 'dark' else ''
            <button class="cm-btn primary {{ _line }}" type="submit" name="action">Save</button>
        </form>
    </div>

    <!-- footer -->
    % from main import partial_footer
    {{ !partial_footer() }}

</body>
</html>
