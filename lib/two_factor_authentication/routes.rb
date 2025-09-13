module ActionDispatch::Routing
  class Mapper
    protected

      def devise_two_factor_authentication(mapping, controllers)
        resources :two_factor_authentication, :only => [:show, :update], :path => mapping.path_names[:two_factor_authentication], :controller => controllers[:two_factor_authentication] do
          collection { get "resend_code" }
        end
      end
  end
end
