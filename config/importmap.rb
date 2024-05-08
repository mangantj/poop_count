# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.turbo.min.js"
pin "@hotwired/turbo-rails", to: "https://ga.jspm.io/npm:@hotwired/turbo-rails@7.3.0/app/javascript/turbo/index.js"
# pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@2.3.0/lib/esm/index.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.2/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "ultimate_turbo_modal", to: "https://ga.jspm.io/npm:ultimate_turbo_modal@1.5.1/dist/ultimate_turbo_modal.min.js"
pin "@hotwired/turbo", to: "https://ga.jspm.io/npm:@hotwired/turbo@7.3.0/dist/turbo.es2017-esm.js"
pin "@rails/actioncable/src", to: "https://ga.jspm.io/npm:@rails/actioncable@7.1.3/src/index.js"
pin "el-transition", to: "https://ga.jspm.io/npm:el-transition@0.0.7/index.js"
