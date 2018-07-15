<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> 404 Not Found - {{ obj['sitetitle'] }} </title>
    % from main import partial_style, partial_script
    {{ !partial_style() }}
    {{ !partial_script() }}
</head>
<body>

    <!-- header bar -->
    % from main import partial_header
    {{ !partial_header() }}

    <!-- breadcrumb -->
    <ul id="asterisk-breadcrumb" class="cm-breadcrumb">
        <li><a href="{{ obj['host'] }}">Top</a></li>
        <li><a href="{{ obj['host'] }}/404">404</a></li>
    </ul>

    <div class="cm-text-center cm-text-bold cm-text-large">
        404 Not Found
    </div>
    <pre style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
  _   ___  _______  _   ___    __    _  _______  _______    _______  _______  __   __  __    _  ______
 | | |   ||  _    || | |   |  |  |  | ||       ||       |  |       ||       ||  | |  ||  |  | ||      |
 | |_|   || | |   || |_|   |  |   |_| ||   _   ||_     _|  |    ___||   _   ||  | |  ||   |_| ||  _    |
 |       || | |   ||       |  |       ||  | |  |  |   |    |   |___ |  | |  ||  |_|  ||       || | |   |
 |___    || |_|   ||___    |  |  _    ||  |_|  |  |   |    |    ___||  |_|  ||       ||  _    || |_|   |
     |   ||       |    |   |  | | |   ||       |  |   |    |   |    |       ||       || | |   ||       |
     |___||_______|    |___|  |_|  |__||_______|  |___|    |___|    |_______||_______||_|  |__||______|
    </pre>

    <!-- footer -->
    % from main import partial_footer
    {{ !partial_footer() }}

</body>
</html>
