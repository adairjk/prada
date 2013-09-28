Before('@prada') do
  @prada = Prada.new
end

After('@prada') do
  @prada.browser.close
end