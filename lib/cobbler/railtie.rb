require 'cobbler/views_helpers'

module Cobbler
  class Railtie < Rails::Railtie
    initializer 'cobbler.view_helpers' do
      require 'bootstrap-sass'
      ActionView::Base.send :include, Cobbler::ViewsHelpers
    end
  end
end
