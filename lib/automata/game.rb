module Automata
    class Game

        attr_accessor :state

        def initialize
            @state = 'Inactive'
        end

        def start(seed, generations)
            self.state = 'Running'
            Automata::Algorithm.new(seed, generations).run
            self.state = 'Finished'
        end

        def stop
            @state = 'Stopped'
        end

    end
end