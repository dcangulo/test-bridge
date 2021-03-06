package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |spec|
  spec.name = package['name']
  spec.version = package['version']
  spec.summary = package['description']
  spec.license = package['license']
  spec.homepage = package['homepage']
  spec.author = { package['author']['name'] => package['author']['email'] }
  spec.source = { git: package['repository']['url'] }
  spec.source_files = '*.{h,m}'
end
