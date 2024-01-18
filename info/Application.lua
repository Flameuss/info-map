import("gis")
import("publish")


description = [[
  descrição do site info!!
]]

Project {
  title = "site info",
  author = "NEXUS",
  file = "info.tview",
  clean = true,
  Points = "info.shp",
}

Application {
  key = "AIzaSyA1coAth-Bo7m99rnxOm2oOBB88AmaSbOk",
  project = "info.tview",
  base = "roadmap",
  description = description,
  output = "/opt/lampp/htdocs/new-webmapping/info/siteinfo",
  order = { "Points" },
  template = { navbar = "darkblue", title = "white" },
  display = false,

  Points = View {
    description = "Cobertura",
    select = "Local",
    icon = "flag",
    label = "locais",

    report = function(cell)
      local mreport = Report {
            title = "Coleta de solo de ".. cell.Local,
            author = "NEXUS",
      }

      local text = ""
      -- Descricao = [[<h3>Descrição:</h3> input description here!]]

      text = "Local: " .. cell.Local .. "<br>tipo: " .. cell.Cobertura .. "."

      mreport:addText(text)
      -- mreport:addImage("photos/"..cell.Fotografia..".jpg")


      return mreport
    end
  }
}