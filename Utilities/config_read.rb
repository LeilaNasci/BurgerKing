require 'yaml'

class ConfigRead
  
  def readconfigdata(key)
    config= YAML.load_file("../Config/config.yml")
    config[key]
  end

end
