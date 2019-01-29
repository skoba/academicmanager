describe 'Scale' do
  before(:all) { Working['dir'] = [MOCK_DIR] }

  example 'working_dir' do
    expect(Scale.working_dir).to eq [MOCK_DIR]
  end

  example 'total file size' do
    expect(Scale.size).to eq 445
  end

  example 'total file number' do
    expect(Scale.file_number).to eq 1
  end

  example 'daily record' do
    expect { Scale.daily_record }.to change { Scale.count }.by(1)
  end

  describe 'when new file added' do
    before(:all) do
      mock = File.new(ADDITIONAL_FILE, 'w')
      mock.puts MOCK
      mock.close
    end

    example 'file number should be added 1, eq 2' do
      expect(Scale.file_number).to eq 2
    end

    example 'file size should be increased to 500' do
      expect(Scale.size).to eq 542
    end

    after(:all) do
      FileUtils.rm(ADDITIONAL_FILE)
    end
  end
end

MOCK_DIR = Rails.root.join('spec/models/mock')
ADDITIONAL_FILE = File.join(MOCK_DIR, 'additional.txt')
MOCK = <<EOS
Quo usque tandem abutere, Catilina, patientia nostra? Quam diu etiam furor iste tuus nos eludet?
EOS
