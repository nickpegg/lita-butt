module Lita
  module Handlers
    # s/chatbot/chatbutt/
    class Butt < Handler
      # insert handler code here
      route(/^b(u*)tt(s?)/, :butt, help: { 'butt' => '(_)_)' })

      def butt(response)
        groups = response.matches.first
        width = groups.first.size
        butt = make_butt width

        if groups.last == 's'
          response.reply(escape([butt, butt].join(' ')))
        else
          response.reply(escape(butt))
        end
      end

      def make_butt(width = 1)
        bottom = '_' * width
        "(#{bottom})#{bottom})"
      end

      # Properly escape the butt for a given chat service
      def escape(butt, adapter = robot.config.robot.adapter)
        case adapter
        when :slack
          "`#{butt}`"
        else
          butt
        end
      end

      Lita.register_handler(self)
    end
  end
end
