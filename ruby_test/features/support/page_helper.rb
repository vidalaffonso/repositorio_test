#auxiliar só para as pages

Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Page
  def home_page
    @home_page ||= HomePage.new
  end
  def search_store
    @search_store ||= SearchStore.new
  end
end