import("publish")
import("gis")

Project {
  title = "site campo",
  author = "NEXUS",
  file = "campo001.tview",
  clean = true,
  points = "campo-001.shp",
}


description = [[
  teste site campo  teste 03!
]]

Application {
  key = "AIzaSyA1coAth-Bo7m99rnxOm2oOBB88AmaSbOk",
  project = "campo001.tview",
  base = "roadmap",
  description = description,
  output = "C:\\Users\\luish\\Documents\\new-webmapping\\campo\\sitecampo",
  template = { navbar = "darkblue", title = "white" },
  display = false,

  points = View {
    missing = 1,
    description = "localidades visitadas",
    select = "Local",
    icon = "flag",
    label = "ponto de coleta",

    report = function(cell)
      local mreport = Report {
        title = "Ponto de Coleta de Solo e Vegetação",         -- "name" is an attribute of object
        author = "NEXUS"
      }

      local text = "Local: " ..cell.Local.. ", id: " ..cell.fidd.."."

      mreport:addText(text)
      mreport:addImage("photos/"..cell.image..".png")


      return mreport
    end
  }
}
