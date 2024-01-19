import("gis")
import("publish")


description = [[
  teste site campo!
]]

Project {
  title = "site campo",
  author = "NEXUS",
  file = "campo002.tview",
  clean = true,
  Points = "campo-002.shp",
}

Application {
  key = "AIzaSyA1coAth-Bo7m99rnxOm2oOBB88AmaSbOk",
  project = "campo002.tview",
  base = "roadmap",
  description = description,
  output = "/home/luis/Ti/Inpe/new-webmapping/campo/sitecampo",
  order = { "Points" },
  template = { navbar = "darkblue", title = "white" },
  display = false,

  Points = View {
    description = "Coberturas",
    select = "Local",
    icon = "flag",
    label = "locais",

    report = function(cell)
      local report = Report {
            title = cell.titulo,
      }
      local text = ""
      -- Descricao = [[<h3>Descrição:</h3> input description here!]]

      text = "Local: " ..cell.Local..", id: "..cell.fid.."."

      report:addText(text)
      report:addImage("photos/"..cell.image..".png")


      return report
    end
  }
}
