require "active_support"
require "active_support/core_ext/string/filters"
require "active_support/core_ext/numeric/conversions"
require "active_support/core_ext/array/conversions"
require "pry"

4026591889.to_s(:phone, area_code: true)
"Oh dear, Oh dear! I shall most certainly be late".truncate_words(4)
%w(Earth Wind Fire).to_sentence





binding.pry