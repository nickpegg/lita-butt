module Lita
  module Handlers
    # s/chatbot/chatbutt/
    class Butt < Handler
      # insert handler code here
      route(/^b(u*)tt/, :butt, help: { 'butt' => '(_)_)' })

      def butt(response)
        groups = response.matches.first
        width = groups.first.size

        response.reply "(#{'_' * width})#{'_' * width})"
      end

      Lita.register_handler(self)
    end
  end
end
