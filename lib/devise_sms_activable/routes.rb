module ActionDispatch::Routing
  class Mapper
    #
    # consume_user_sms_activation GET|POST   /users/sms_activation/consume(.:format)   devise/sms_activations#consume
    # insert_user_sms_activation GET        /users/sms_activation/insert(.:format)    devise/sms_activations#insert
    # new_user_sms_activation GET        /users/sms_activation/new(.:format)       devise/sms_activations#new
    # user_sms_activation POST       /users/sms_activation(.:format)           devise/sms_activations#create
    
    protected
      def devise_sms_activation(mapping, controllers)
        resource :sms_activation, :only => [:new, :create], :path => mapping.path_names[:sms_activation], :controller => controllers[:sms_activations] do
          match :consume, :path => mapping.path_names[:consume], :as => :consume, :via => [:get, :post]
          get :insert, :path => mapping.path_names[:insert], :as => :insert
        end
      end

  end
end
