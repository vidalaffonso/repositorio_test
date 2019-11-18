
# metodo para tira screenshot e imbutir no relatorio html
module Helper
    def tirar_foto(file_name, resultado)
      data = Time.now.strftime('%F').to_s
      temp_shot = page.save_screenshot("results/#{data}/temp_screen.png")
      shot = Base64.encode64(File.open(temp_shot, "rb").read)
      embed(shot, 'image/png', "Ver_Evidencia(#{data})")
    end
  end