# AtiStyle
By: Jakson Moura

With help of: João Victor

## Instalação

Adicione esta linha no Gemfile:

```ruby
gem 'ati_style', git: 'http://git.ati.to.gov.br/jakson.moura/ati_style.git'
```

Execute:

    $ bundle

Configure o root_path da aplicação em routes:
```ruby
root to: 'controller#action'
```

Rails generator
```console
$ rails g ati_style:install
```

Para atualizar os assets
```console
$ rails g ati_style:update_assets
```
## Configuração

No application.js adicione:
```javascript
//= require vendors.min
//= require ati_theme
//= require plugins
//= require toastr_custom
```