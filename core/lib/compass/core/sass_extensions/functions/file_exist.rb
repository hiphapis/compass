module Compass::Core::SassExtensions::Functions::FileExist
  def file_exist(image_file)
    image_file = image_file.value
    real_path = if Compass.configuration.images_path
      File.join(Compass.configuration.images_path, image_file)
    else
      File.join(Compass.configuration.project_path, image_file)
    end
    
    return Sass::Script::Bool.new(File.exist?(real_path))
  end
end