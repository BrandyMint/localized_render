# LocalizedRender

Позволяет удобно редаткировать globalized-атрибуты моделей во вьюхах с
поддержкой bootstrap 3 css

## Usage

Имеем модель с атрибутом title подключенным через globalize

```
class Content < ApplicationRecord
  translates :title
end
```

В представлении формы делаем переключатель через таб-ы между доступными
локалями:


```slim
= simple_form_for content do |f|
  = localized_render do |locale|
    = f.input localized_attribute(:title, locale), label: 'Название'
```

Получаем:

![Image of example](https://raw.githubusercontent.com/BrandyMint/localized_render/master/doc/example.gif)


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'localized_render'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install localized_render
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
