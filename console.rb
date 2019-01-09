require('pry')
require_relative('models/pizza_order')

order1 = PizzaOrder.new(
  {
    'first_name' => 'Luke',
    'last_name' => 'Skywalker',
    'quantity' => '1',
    'topping' => 'Napoli'
  }
)

order2 = PizzaOrder.new(
  {
    'first_name' => 'Darth',
    'last_name' => 'Vader',
    'quantity' => '1',
    'topping' => 'Quattro Formaggi'
  }
)

order3 = PizzaOrder.new(
  {
    'first_name' => 'Luke',
    'last_name' => 'Skywalker',
    'quantity' => '2',
    'topping' => "'); DELETE FROM pizza_orders; --"
  }
)

order1.save()
order3.save()

order1.first_name = "Han"
order1.last_name = "Solo"
#
# order1.update

binding.pry
nil
