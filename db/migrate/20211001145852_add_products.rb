class AddProducts < ActiveRecord::Migration[6.1]
  def change
    Product.create :title => 'Гавайская',
                   :description => 'Это та самая Гавайская пиццуля',
                   :price => 90,
                   :size => 30,
                   :is_spicy => false,
                   :is_veg => false,
                   :is_best_offer => true,
                   :path_to_image => '/images/hawaiian.jpg'

    Product.create :title => 'Пеперони',
                   :description => 'Непревзойденная Пеперони, помнишь кто из черепашек любил ее?',
                   :price => 115,
                   :size => 30,
                   :is_spicy => false,
                   :is_veg => false,
                   :is_best_offer => false,
                   :path_to_image => '/images/pepperoni.jpg'

    Product.create :title => 'Вегетарианская',
                   :description => 'Чудесная Вегетарианская пицца',
                   :price => 110,
                   :size => 30,
                   :is_spicy => false,
                   :is_veg => true,
                   :is_best_offer => false,
                   :path_to_image => '/images/veg.jpg'
  end
end
