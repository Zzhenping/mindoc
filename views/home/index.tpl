<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>{{.SITE_NAME}} - Powered by MinDoc</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="author" content="Minho" />
    <meta name="site" content="https://www.iminho.me" />
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <!-- Bootstrap -->
    <link href="{{cdncss "/static/bootstrap/css/bootstrap.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/font-awesome/css/font-awesome.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/css/main.css" "version"}}" rel="stylesheet">
    <script type="text/javascript">
        window.updateBookOrder = "{{urlfor "BookController.UpdateBookOrder"}}";
    </script>
</head>
<body>
<div class="manual-reader manual-container">
    {{template "widgets/header.tpl" .}}
    <div class="container manual-body">
        <div class="row">
             <div class="new-manual-list">
                {{range $index,$item := .Lists}}
                    <div class="list-item" data-id="{{$item.BookId}}">
                        <a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}" class="name" title="{{$item.BookName}}-{{$item.CreateName}}">
                            <div class="list-item-title" ></div>
                            <div class="list-item-content">
                                {{if eq $item.Editor "markdown" }}
                                <p class="list-item-tag">MD</p>
                                {{else if eq $item.Editor "cherry_markdown" }}
                                <p class="list-item-tag">CM</p>
                                {{else if eq $item.Editor "html" }}
                                <p class="list-item-tag">QL</p>
                                {{else if eq $item.Editor "new_html" }}
                                <p class="list-item-tag">WE</p>
                                {{else}}
                                <p class="list-item-tag">Emp</p>
                                {{end}}
                                <p class="manual-name">
                                    {{$item.BookName}}
                                </p>
                                <p class="manual-info">
                                    <span>1</span>
                                    <span>{{if eq $item.RealName "" }}{{$item.CreateName}}{{else}}{{$item.RealName}}{{end}}</span>
                                </p>
                            </div>
                        </a>
                    </div>

                {{else}}
                    <div class="text-center" style="height: 200px;margin: 100px;font-size: 28px;">{{i18n $.Lang "message.no_project"}}</div>
                {{end}}
            </div>
            <nav class="pagination-container">
                {{if gt .TotalPages 1}}
                    {{.PageHtml}}
                {{end}}
                <div class="clearfix"></div>
            </nav>
        </div>
    </div>
    {{template "widgets/footer.tpl" .}}
</div>
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/layer/layer.js"}}"></script>
<script src="{{cdnjs "/static/js/sort.js"}}" type="text/javascript"></script>
{{.Scripts}}
</body>
</html>