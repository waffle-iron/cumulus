# -*- encoding: utf-8 -*-

require "bundler"

Gem::Specification.new do |s|
  s.name                      = "cumulus-aws"
  s.version                   = "0.11.0"
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = ["Keilan Jackson", "Mark Siebert"]
  s.email                     = "cumulus@lucidchart.com"
  s.homepage                  = "http://lucidsoftware.github.io/cumulus/"
  s.summary                   = "AWS Configuration Manager"
  s.description               = "Cumulus allows you to manage your AWS infrastructure by creating JSON configuration files that describe your AWS resources."
  s.files                     = `git ls-files | grep -v ^conf/`.split($/)
  s.executables               = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.license                   = "Apache-2.0"

  s.add_runtime_dependency "aws-sdk", "2.2.8"
  s.add_runtime_dependency "parse-cron", "~> 0.1.4"
end
