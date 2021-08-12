Rails.application.routes.draw do
  get 'restart/index'

  get 'times/counter'

  get 'welcome/index'

  get 'say/hello_dojo'
  get 'say/hello'
  get 'say/hello_joe'
  get 'say/hello_michael'
  get 'times/counter'
  get 'times/restart'

  root 'welcome#index'
get '' => 'welcome#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
get "hello" => "say#hello_dojo"
get "say/hello" => "say#hello"
get "say/hello/joe" => "say#hello_joe"
get "say/hello/michael" => "say#hello_michael"
get "times" => "times#counter"
get "times/restart" => "times#restart"
end
