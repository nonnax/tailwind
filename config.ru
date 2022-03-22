#!/usr/bin/env ruby
# Id$ nonnax 2022-03-21 21:01:12 +0800
use Rack::Static,
  :urls => ["/dest", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
