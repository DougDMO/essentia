desc 'To run:'
task :run, [:ENVIRONMENT, :RUNNER, :DEBUGGER, :PROFILE] do |_t, args|
  init = 'cucumber' +
      ' ENVIRONMENT=' + args[:ENVIRONMENT] +
      ' RUNNER=' + args[:RUNNER] +
      ' DEBUGGER=' + args[:DEBUGGER] +
      ' -p ' + args[:PROFILE]

  system(init)
end