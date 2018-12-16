require 'json'
module ImportData

  def import_json(path)
    file = File.read(path)
    JSON.parse(file)
  end

end
