module Lita
  module Handlers
    # s/chatbot/chatbutt/
    class Butt < Handler
      # insert handler code here
      route(/^b(u*)tt(s?)/, :butt, help: { 'butt' => '(_)_)' })

      def butt(response)
        groups = response.matches.first
        width = groups.first.size

        bottom = '_' * width
        butt = "(#{bottom})#{bottom})"

        if groups.last == 's'
          response.reply [butt, butt].join ' '
        else
          response.reply butt
        end
      end

      Lita.register_handler(self)
    end
  end
end
