<!-- 
     _                       
 ___| |__   __ _  ___  _   _ 
|_  / '_ \ / _` |/ _ \| | | |
 / /| | | | (_| | (_) | |_| |
/___|_| |_|\__,_|\___/ \__, |
                       |___/  
  勤有功，戏无益。戒之哉，宜勉力。--- 喝了这碗鸡汤还有3碗
  做一个好前端真的好难   (╯‵□′)╯ ︵┻━┻ 
-->
<!doctype html>
{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.use_motion %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
  {# 百度验证 非统计 #}
  <meta name="baidu-site-verification" content="k0UgqisIfE" />
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ config.language }}">
  <!--[if lte IE 9]>
  <script src="http://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
  <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <div style=' clear: both; height: 59px; padding:0 0 0 15px; position: relative;margin:0 auto;'> <a href="http://www.goody.com.cn/2014/updatebrowser/"><img src="http://7u2nvr.com1.z0.glb.clouddn.com/picouterie.jpg" border="0" height="42" width="820" alt="
 您正在使用的ie浏览器版本过低，为了保障您的访问安全，以及更友好的浏览体验，强烈建议您升级最新的浏览器。" style='margin-left:auto;margin-right:auto;display: block;'/></a></div> 
  <![endif]-->
  
  {# 引入第三方统计分析 #}
  {% include '_scripts/third-party/analytics.swig' %}

  {% set container_class = "container one-collumn " %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
  {% endif %}
  
  {# 新增canvas背景组件 #}
  {% include '_scripts/mycanvas.swig' %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %} ">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/duoshuo-hot-articles.swig' %}
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
        {% include '_scripts/third-party/analytics/busuanzi-counter.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i>
    </div>
  </div>

{# 这么多，改天合并先丢到一个div下面 #}
<div class="includejs">
  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}
  {# 第三方组件 到配置文件里开启或关闭 #}
  {% include '_scripts/third-party/comments.swig' %}
  {% include '_scripts/third-party/tinysou.swig' %}
  {% include '_scripts/third-party/localsearch.swig' %}
  {% include '_scripts/third-party/mathjax.swig' %}
  {% include '_scripts/third-party/lean-analytics.swig' %}
  {% include '_scripts/baidu-push.swig' %}

  {#  #}
  {# 新增canvas自定义js入口背景组件 #}
  {% if  theme.myjs.enable  %}
    <script type="text/javascript" src="{{theme.myjs.url}}"></script> 
  {% endif %}
  
</div>
</body>
</html>
