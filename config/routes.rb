Rails.application.routes.draw do
  get "/query_params", controller: "params", action: "query_params"
  get "/url_segment_params/:wildcard", controller: "params", action: "url_segment_params"
end
