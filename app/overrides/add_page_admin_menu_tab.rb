Deface::Override.new(:virtual_path => "spree/layouts/admin",
    :name => "admin_content_admin_tab_parser",
    :insert_bottom => "[data-hook='admin_tabs']",
    :text => "<ul class=\"nav nav-sidebar\"><%= tab(:pages, :label => t('spree.admin.sidebar.pages'), :url => spree.admin_pages_path, :icon => 'file') if can? :admin, Spree::Admin::ReportsController%></ul> ",
    :disabled => false)