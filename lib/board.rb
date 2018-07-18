class Board
    attr_reader :size
    def initialize(opts = {})
        @size = opts[:size]
    end
end