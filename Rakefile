
def run_in_parallel(processes)
  system("parallel_rspec --failure-exit-code 2 -n #{processes} --test-options '-r rspec --order random'  spec")
end


def run_in_parallel_qa(processes, tag)
  puts "**** This is tag \"#{tag}\""
  puts "parallel_rspec  -n #{processes} --test-options '-r rspec --order random  --tag #{tag}' spec"
  system("parallel_rspec  -n  #{processes} --test-options '-r rspec --order random  --tag #{tag}' spec")
  fail "rspec spec failed with exit code #{$?.exitstatus}" if ($?.exitstatus != 0)
end

def run_in_parallel_rsv2(processes, tag)
  puts "**** This is tag #{tag}"
  system("parallel_rspec  -n  #{processes}  --test-options '-r rspec --order random  --tag #{tag}' spec")
  fail "rspec spec failed with exit code #{$?.exitstatus}" if ($?.exitstatus != 0)
end

namespace :desktop do
  # example:
  # rake desktop:local[chrome, '320,896']
  desc 'Run tests on local build by browser'
  task :local, :browser, :windows_width, :windows_height, :device_name  do |t, args|
    ENV['browser'] = args[:browser]
    ENV['base_url'] = 'https://gist.github.com'
    ENV['windows_width'] = args[:windows_width]
    ENV['windows_height'] = args[:windows_height]
    ENV['device_name'] = args[:device_name]
    ENV['base_url'] = args[:base_url]
    run_in_parallel_qa('6', "#{tag}")
  end



end

