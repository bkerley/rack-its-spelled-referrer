require "rack/its/spelled/referrer/version"

module Rack
  module Its
    module Spelled
      class Referrer
        def initialize(app)
          @app = app
        end

        def call(env)
          referer = find_referer env

          return @app.call env unless referer

          referred_env = fix_spelling env, referer

          return @app.call referred_env
        end

        private
        
        def find_referer(env)
          return env['HTTP_REFERER']
        end

        def fix_spelling(env, referer)
          env['HTTP_REFERRER'] = referer
        end
      end
    end
  end
end
