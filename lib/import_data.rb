require 'json'
module ImportData

  def import_json(path)
    file = File.read(path)
    raw_import = JSON.parse(file)
    # raw_import["contents"]
  end


end
