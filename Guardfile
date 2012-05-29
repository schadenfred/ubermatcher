require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

group "background" do
  
  # Spork
  guard 'spork', bundler: true, 
    cucumber_env: { 'RAILS_ENV' => 'test' }, 
    rspec_env: { 'RAILS_ENV' => 'test' }, wait: 200 do
      watch('Gemfile.lock')
      watch('config/application.rb')
      watch('config/environment.rb')
      watch(%r{^config/environments/.+\.rb$})
      watch(%r{^config/initializers/.+\.rb$})
      watch('spec/spec_helper.rb')
      watch(%r{^features/support/.+\.rb$})
  end

  # Run Bundle with each Gemfile edit
  guard 'bundler' do
    watch('Gemfile')
  end
  
  # Reload The Browser when changes are made.
  guard 'livereload' do
    watch(%r{app/.+\.(erb|haml)})
    watch(%r{app/helpers/.+\.rb})
    watch(%r{(public/|app/assets).+\.(css|js|html)})
    watch(%r{(app/assets/.+\.css)\.s[ac]ss}) { |m| m[1] }
    watch(%r{(app/assets/.+\.js)\.coffee})
    watch(%r{config/locales/.+\.yml})
  end
end

group "tests" do

  # Cucumber
  guard 'cucumber', bundler: true, cli: "--drb", 
    all_after_pass: false, all_on_start: false do
      watch(%r{^features/.+\.feature$})
      watch(%r{^features/support/.+$})          { 'features' }
      watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
  end

  # Rspec
  guard 'rspec', :version => 2, :cli => "--color --drb", all_on_start: false, all_after_pass: false  do
      watch(%r{^spec/.+_spec\.rb$})
      watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
      watch('spec/spec_helper.rb')  { "spec" }
      watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
      watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
      watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
      watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
      watch('config/routes.rb')                           { "spec/routing" }
      watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  end

  # Capybara request specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }

end