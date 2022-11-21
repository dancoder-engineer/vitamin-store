# Naturally Healthy Vitamins

An E-Commerce app through which vitamins can be sold. Can easily be repurposed to sell anything else you wish. Featuring Google Pay.

## Installation

```bash
npm install
npm run build
mv ./build/* public

bundle install
bundle exec rake db:migrate 
bundle exec rake db:seed 
```

## Usage

```bash
npm start
```

```bash
rails s
```

The health conscious user can shop around, since carts don't need you to be logged in, and persist between logins and logouts, even between different users as long as the cookie stays. They can even write reviews of the items - a must for any website that seeks to carry different brands.

## Roadmap
- Make a section where an admin can easily edit stock and create new items
- Make it so warehouse workers can log in and be told orders to pack and print out labels
- Make a way for call center workers to create new orders

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)