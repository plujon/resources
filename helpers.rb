def partial(filename)
  contents = File.read(filename + ".html.erb")
  bind = binding
  ERB.new(contents, nil, "-").result(bind)
end

def str(x)
  if x.respond_to? :to_ary
    x.to_ary.join(", ")
  elsif x.respond_to? :to_s
    x.to_s
  else
    "hmm"
  end
end
