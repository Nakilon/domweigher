def DOMWeigher string, mult = 10
  require "nokogiri"
  root = ::Nokogiri.HTML(string).root
  all_size = root.to_s.size
  all = [[0, root]]
  loop do
    (d, n) = all.select{ |__,_| _.is_a? ::Nokogiri::XML::Element }.max_by{ |__,_| _.to_s.size }
    break unless d
    break if n.to_s.size * mult < all_size
    all[all.index([d, n]), 1] = [
      [n.to_s.size, "%#{d}s%s" % [nil, "#{n.name}#{".#{n[:class].split.join ?.}" if n[:class]}"]],
      *(n.elements.map{ |_| [d+1, _] } unless %w{ svg }.include? n.name),
    ]
  end
  require "io/console"
  y, x = ::IO.console.winsize
  max = all.select{ |__,_| _.is_a? ::String }.map(&:first).max.to_s.size
  all.map do |a, b|
    "%#{max}s %-#{x-max-1}s" % [a, b] if b.is_a? ::String
  end.compact
end
