<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> {{ obj["site"] }} </title>
    % from main import partial_style, partial_script
    {{ !partial_style() }}
    <link rel="stylesheet" type="text/css" href="{{ obj['host'] }}/static/css/article.css">
    {{ !partial_script() }}
    <script type="text/babel" src="{{ obj['host'] }}/static/js/article.js"></script>
</head>
<body>

    <!-- header bar -->
    % from main import partial_header
    {{ !partial_header() }}

    <!-- breadcrumb -->
    <ul id="asterisk-breadcrumb" class="cm-breadcrumb">
        <li><a href="{{ obj['host'] }}">Top</a></li>
        <li><a href="{{ obj['host'] }}/article">Article</a></li>
        <li><a href="{{ obj['host'] }}/article/{{ article['filename'] }}">{{ article['filename'] }}</a></li>
    </ul>

    <!-- context -->
    <div id="asterisk-context">
        % from main import markdown_load
        {{ !markdown_load(article['filename']) }}
    </div>

    <!-- social -->
    % from main import partial_social
    {{ !partial_social() }}

    <!-- footer -->
    % from main import partial_footer
    {{ !partial_footer() }}

</body>
</html>
