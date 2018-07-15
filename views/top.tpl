<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Top - {{ obj['site'] }} </title>
    % from main import partial_style, partial_script
    {{ !partial_style() }}
    <link rel="stylesheet" type="text/css" href="{{ obj['host'] }}/static/css/top.css">
    {{ !partial_script() }}
    <script type="text/babel" src="{{ obj['host'] }}/static/js/top.js"></script>

</head>
<body>

    <!-- header -->
    % from main import partial_header
    {{ !partial_header() }}

    <!-- breadcrumb -->
    <ul id="asterisk-breadcrumb" class="cm-breadcrumb">
        <li><a href="{{ obj['host'] }}">Top</a></li>
    </ul>

    <!-- content: newest 6, get by react -->
    <div class="cm-text-center cm-text-large cm-text-bold">
        Article Newest 6
    </div>
    <div class="cm-text-center cm-text-small">
        <a href="{{ obj['host'] }}/article">Show Article List</a>
    </div>

    <!-- content: link -->
    <div class="cm-grid">
        <div class="cm-row">
            <div id="newest6"></div>
        </div>
        <div class="cm-row">
            <div class="cm-text-center cm-text-small">
                <a href="{{ obj['host'] }}/article">Show Article List</a>
            </div>
        </div>
    </div>

    <!-- social -->
    % from main import partial_social
    {{ !partial_social() }}

    <!-- footer -->
    % from main import partial_footer
    {{ !partial_footer() }}

</body>
</html>
