# LulalalaAddressTokenizer

Postal addresses tokenizer using Wapiti model.

Intended for addresses in CJK (Chinese, Japanese Korean) characters.
After wapiti model labels each token(character), this gem combines adjacent word of the same label together.
This is important for CJK languages because its phrases (combination of words) are not separated by spaces.

台灣地址分詞用

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lulalala_address_tokenizer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lulalala_address_tokenizer

## Usage

```
tokenizer = LulalalaAddressTokenizer.new('address.mod')
tokenizer.parse("AA縣BB鎮CC路D號")
# {"city"=>"AA縣", "district"=>"BB鎮", "street"=>"CC路", "housenumber"=>"D號"}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/lulalala_address_tokenizer.

