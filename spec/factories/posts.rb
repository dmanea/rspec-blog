FactoryGirl.define do
  factory :post do
    title         'Simple Title'
    description   'lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy
                  eirmod tempor invidunt ut labore et dolore magna aliquyam erat sed diam
                  voluptua at vero eos et accusam et justo duo dolores et ea rebum stet clita'
    post_date     {rand(100).days.ago}
    published     true

    factory :unpublished_post do
      published   false
    end
  end

end
