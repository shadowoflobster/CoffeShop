using {exam.coffeeshop} from '../db/schema';


@path: '/coffee'
service CoffeShopService @(requires: 'authenticated-user') {
    @restrict: [
    { grant: 'READ', to: 'Customer' },
    { grant: '*',    to: 'Barista' }
  ]
    entity Orders     as projection on coffeeshop.Orders;
    entity OrderItems as projection on coffeeshop.OrderItems;
}
