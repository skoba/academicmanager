# Scale class to measuer the size of files
class Scale < ApplicationRecord
  def self.size
    working_dir.inject(0) do |total, dir|
      Dir.glob(File.join(dir, '**/*')).inject(total) do |sub, file|
        sub + File.open(file).size
      end
    end
  end

  def self.file_number
    working_dir.inject(0) do |total, dir|
      Dir.glob(File.join(dir, '**/*')).inject(total) do |sub|
        sub + 1
      end
    end
  end

  def self.working_dir
    Working['dir']
  end

  def self.daily_record
    create(f_number: file_number, f_size: size, t_measured: Time.now)
  end
end
