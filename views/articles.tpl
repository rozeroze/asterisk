<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Articles - {{ obj['site'] }} </title>
    % from main import partial_style, partial_script
    {{ !partial_style() }}
    <link rel="stylesheet" type="text/css" href="{{ obj['host'] }}/static/css/articles.css">
    {{ !partial_script() }}
    <script type="text/babel" src="{{ obj['host'] }}/static/js/articles.js"></script>
</head>
<body>

    <!-- header bar -->
    % from main import partial_header
    {{ !partial_header() }}

    <!-- breadcrumb -->
    <ul id="asterisk-breadcrumb" class="cm-breadcrumb">
        <li><a href="{{ obj['host'] }}">Top</a></li>
        <li><a href="{{ obj['host'] }}/article">Article</a></li>
    </ul>

    <!-- articles -->
    <div id="asterisk-articles"></div>

    <!-- social -->
    % from main import partial_social
    {{ !partial_social() }}

    <!-- footer -->
    % from main import partial_footer
    {{ !partial_footer() }}

</body>
</html>
