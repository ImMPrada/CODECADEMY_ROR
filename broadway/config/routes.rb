Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pages/home' => 'pages#home' mostraria la accion de home en el controlador pages, si se
  # ingrresa a pages/home. Pero para hacerla la raiz:

  root 'pages#home'
end
