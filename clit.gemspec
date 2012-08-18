Gem::Specification.new {|s|
	s.name         = 'clit'
	s.version      = '0.0.1'
	s.author       = 'meh.'
	s.email        = 'meh@schizofreni.co'
	s.homepage     = 'http://github.com/meh/ruby-clit'
	s.platform     = Gem::Platform::RUBY
	s.summary      = 'Library for nice looking CLI output.'

	s.files         = `git ls-files`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.require_paths = ['lib']

	s.add_runtime_dependency 'ruby-terminfo'
	s.add_runtime_dependency 'colorb'
}
