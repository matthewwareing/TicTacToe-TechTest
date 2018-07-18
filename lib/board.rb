class Board
    attr_reader :size, :spaces
    def initialize(opts = {})
        @size = opts[:size]
        @spaces = spaces
    end

    def spaces
        size * size
    end
end