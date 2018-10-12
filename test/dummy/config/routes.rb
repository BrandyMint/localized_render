Rails.application.routes.draw do
  mount LocalizedRender::Engine => "/localized_render"
end
