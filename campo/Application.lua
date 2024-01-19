import("publish")


description = [[
  teste site campo  teste 02!
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
    description = "localidades visitadas",
    select = "Local",
    icon = "flag",
    label = "ponto de coleta",

    report = function(cell)
      local mreport = Report {
        title = "Ponto de Coleta de Solo e Vegetação",         -- "name" is an attribute of object
        author = "NEXUS"
      }

      local text = "Local: " ..cell.Local.. ", id: " ..cell.fid.."."

      mreport:addText(text)
      mreport:addImage("photos/"..cell.image..".png")


      return mreport
    end
  }
}
