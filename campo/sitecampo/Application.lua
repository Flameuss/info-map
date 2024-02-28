import("publish")
import("gis")

Project {
  title = "site campo",
  author = "NEXUS",
  file = "campo001.tview",
  clean = true,
  points = "campo_001.shp",
}


description = [[
  teste site campo  teste 04!
]]

Application {
  key = "AIzaSyA1coAth-Bo7m99rnxOm2oOBB88AmaSbOk",
  project = "campo001.tview",
  base = "roadmap",
  description = description,
  output = "/home/luis/Ti/Inpe/new-webmapping/campo/sitecampo",
  template = { navbar = "darkblue", title = "white" },
  display = false,

  points = View {
    missing = 1,
    description = "Localidades visitadas",
    select = "Ponto",
    icon = "flag",
    label = "ponto de coleta",

    report = function(cell)
      local report = Report {
        title = "Ponto de Coleta de Solo e Vegetação",         -- "name" is an attribute of object
        author = "NEXUS"
      }
      
      if cell.fid == 1 then

      title =
      [[Esta aplicação descreve os trabalhos de campo realizados entre os dias 28 e 29/04/2022 (estação úmida), e 29/11 e 04/12/2022 (estação seca), na Estação Experimental Miguel Arraes - Instituto Nacional do Semiárido (INSA), no município de Campina Grande-PB, representando o bioma Caatinga.
      Foram realizadas coletas de amostras de solo, planta e água (corpos hídricos da área e chuva), com o objetivo de caracterizar o estado hídrico e os mecanismos de uso da água pelas plantas por meio do uso de isótopos estáveis da água, a fim de avaliar a variabilidade sazonal (estação chuvosa x estação seca) na separação ecohidrológica nesse bioma, além de realizar a análise granulométrica do solo.</br>]]

      else

        title =
        [[Esta aplicação descreve os trabalhos de campo realizados entre os dias 21 e 27/07/2022 (estação seca) e 06 e 11/02/2023 (estação úmida), no campus da Universidade Federal do Oeste da Bahia (UFOB), no município de Barreiras-BA, representando o bioma Cerrado.
Foram realizadas coletas de amostras de solo, planta e água (corpos hídricos da área e chuva), com o objetivo de caracterizar o estado hídrico e os mecanismos de uso da água pelas plantas por meio do uso de isótopos estáveis da água, a fim de avaliar a variabilidade sazonal (estação chuvosa x estação seca) na separação ecohidrológica nesse bioma, além de realizar a análise granulométrica do solo.</br>]]
      end

      local text = "Local: <b>" .. cell.Local .. "</b><br>Id:<b> " .. cell.fid .. "</b>"
      report:addText(title)
      report:addText(text)
      report:addSeparator()
      report:addImage("photos/" .. cell.Foto01 .. ".png")
      report:addImage("photos/" .. cell.Foto02 .. ".png")
      report:addImage("photos/" .. cell.Foto03 .. ".png")


      return report
    end
  }
}
