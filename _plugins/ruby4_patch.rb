# Monkey-patch Liquid for Ruby 4.0 compatibility
# Ruby 4.0 removed Object#tainted?, which Liquid 4.0.3 still uses.
module Liquid
  class Variable
    def taint_check(obj)
      # In Ruby 4.0+, tainted? is removed, so skip the check
    end
  end
end
