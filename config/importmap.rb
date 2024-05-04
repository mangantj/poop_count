# Pin npm packages by running ./bin/importmap

pin "application", preload: true
# pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.turbo.min.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@2.3.0/lib/esm/index.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
