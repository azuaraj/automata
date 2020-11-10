require 'terminal-table'

module Automata
    class ArrayPrettifier

        def self.transform(ary)
            table = Terminal::Table.new :rows => ary
            puts table
        end

    end
end