<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    {# <i class="fa fa-heart"></i> #}
    <i class="menu-item-icon fa fa-fw fa-user"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="https://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
 {#  {{ __('footer.theme') }} - #}
  Theme by <a class="theme-link" href="https://github.com/zhaoy875/hexo-theme-zhaoy">zhaoy</a> based on
  {# <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">NexT.{{ theme.scheme }}</a> #}
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">Next</a>
</div>

{# 自定义全局js，20160918主题配置文件新增my_js对象 #}
{% if theme.my_js %}
  <script src="{{ my_js.url }}" class="my_customjs"></script>
{% endif %}