WINDOWS = %w[setup_instructions win_anaconda win_sublime win_git_bash win_make win_github win_alumni win_slack].freeze

filenames = {
  'WINDOWS.md' => WINDOWS
}

filenames.each do |filename, partials|
  File.open(filename.to_s, 'w:utf-8') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"), encoding: "utf-8")
      f << "\n\n"
    end
  end
end
