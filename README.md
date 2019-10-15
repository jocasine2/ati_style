# AtiStyle
By: Jakson Moura
With help of: João Victor

## Instalação

Adicione esta linha no Gemfile:

```ruby
gem 'ati_style', git: 'http://git.seplan.to.gov.br/jakson.moura/ati_style.git'
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

## Contributing

Bug reports and pull requests are welcome on GitHub at http://git.ati.to.gov.br/jakson.moura/ati_style.