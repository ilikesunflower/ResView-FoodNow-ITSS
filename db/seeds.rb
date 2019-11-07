# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants=Restaurant.create([
        {
          name:"Banh my ga mai",
          address:"Ngo 181 Nguyen Luong Bang",
          phone:"0123456784",
          description:"Ngon ngon ngon vo cung"
        },
        {
          name:"Banh ngon nha mo",
          address:"7 Trung Liet Quan Dong Da Ha Noi",
          phone:"01234888784",
          description:"Ngon ngon ngon cuc vo cung"
        },
        {
          name:"Che Tam Dung",
          address:"Kiot 2 cong sau Dai Hoc Thuy Loi",
          phone:"0123422284",
          description:"Ngon ngon ngon vo cung"
        },
        {
          name:"Mo Hue",
          address:"Tran Dai Nghia",
          phone:"0123456784",
          description:"Ngon ngon ngon vo cung"
        },
        {
          name:"ga mai",
          address:" Nguyen Luong Bang",
          phone:"01239996784",
          description:"Ngon ngon ngon den vo cung"
        },
    ])
users=User.create([
  {
    username:"Mai Hoa",
    email:"hoa@gmail.com",
    encrypted_password:"12345",
    birthday: DateTime.new(2009,9,1,17),
    address:"Ngoai thanh Ha Noi",
    phone:"09678655678",
    avatar:"hoa.img"
  },
    {
    username:"Khoa Nguyen",
    email:"khoa@gmail.com",
    encrypted_password:"12345",
    birthday: DateTime.new(2009,9,1,17),
    address:"Ngoai thanh Ha Noi",
    phone:"09678655678",
    avatar:"hoa.img"
  },
    {
    username:"Thanh Binh",
    email:"binh@gmail.com",
    encrypted_password:"12345",
    birthday: DateTime.new(2009,9,1,17),
    address:"Ngoai thanh Ha Noi",
    phone:"09678655678",
    avatar:"hoa.img"
  },
    {
    username:"Khoi Nguyen",
    email:"khoi@gmail.com",
    encrypted_password:"12345",
    birthday: DateTime.new(2009,9,1,17),
    address:"Ngoai thanh Ha Noi",
    phone:"09678655678",
    avatar:"hoa.img"
  },
    {
    username:"Pham Hang",
    email:"hang@gmail.com",
    encrypted_password:"12345",
    birthday: DateTime.new(2009,9,1,17),
    address:"Ngoai thanh Ha Noi",
    phone:"09678655678",
    avatar:"hoa.img"
  },
  ])
foods=Food.create([
    {
      name:"Pho",
      price:20,
      restaurant_id:1
    },
    {
      name:"Cơm Cuộn",
      price:15,
      restaurant_id:1
    },
    {
      name:"Gà Chiên Giòn",
      price:25,
      restaurant_id:1
    },
    {
      name:"Xôi Ngô",
      price:10,
      restaurant_id:1
    },
    {
      name:"Cơm đậu phụ",
      price:15,
      restaurant_id:1
    },
    {
      name:"Thịt bò hầm",
      price:30,
      restaurant_id:1
    },
    {
      name:"Bánh mì nướng",
      price:20,
      restaurant_id:2
    },{
      name:"Bánh xèo",
      price:20,
      restaurant_id:2
    },{
      name:"Bánh bột lọc",
      price:20,
      restaurant_id:2
    },
    
  ])
 Comment.create([
      {
        content:%{ ngon tuyệt đỉnh luôn.ngon dã man.
            },
        restaurant_id:1,
        user_id:3
      },
          {
        content:%{ ngon tuyệt đỉnh luôn.ngon dã man.
            },
        restaurant_id:2,
        user_id:2
      },
          {
        content:%{ ngon tuyệt đỉnh luôn.ngon dã man.
            },
        restaurant_id:1,
        user_id:1
      },
          {
        content:%{ dở tệ đến tệ hại.ko nuốt trôi.
            },
        restaurant_id:2,
        user_id:3
      },
    ])
  FoodImage.create([
      {
        image:"1.img",
        food_id:1
      },
      {
        image:"0.img",
        food_id:0
      },
      {
        image:"2.img",
        food_id:2
      },
      {
        image:"3.img",
        food_id:3
      },
      {
        image:"4.img",
        food_id:4
      },
      {
        image:"5.img",
        food_id:5
      },
      
    ])
 Vote.create([
    {
      start_num:3,
      user_id:1,
      restaurant_id:2
    },
     {
      start_num:4,
      user_id:2,
      restaurant_id:2
    },
     {
      start_num:1,
      user_id:1,
      restaurant_id:1
    },
     {
      start_num:5,
      user_id:2,
      restaurant_id:1
    },
     {
      start_num:3,
      user_id:3,
      restaurant_id:2
    }
  ])
Transaction.create([
    {
      price:123.5,
      restaurant_id:1
    },
     {
      price:303.5,
      restaurant_id:2
    },
    
  ])
ResImage.create([
    {
      image:"res1.img",
      restaurant_id:1
    },
     {
      image:"res2.img",
      restaurant_id:2
    },
    
  ])
#
20.times do |u|
  user = User.new
  user.username = "User"+u.to_s
  user.email = "user"+u.to_s+"@user.com"
  user.password = '123456'
  user.avatar = "data:image/jpeg;base64,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"
  user.password_confirmation = "123456"
  user.skip_confirmation!
  user.save!
end

20.times do |r|
  restaurant = Restaurant.new
  restaurant.name = "Restaurant " + r.to_s
  restaurant.address = "Thanh Xuan, Ha Noi"
  restaurant.phone = 1234567890
  restaurant.description = "description of restaurant " + r.to_s
  10.times do |f|
    food = restaurant.foods.build
    food.name = "Food " + f.to_s
    food.price = 100000
    food.image = "https://images.foody.vn/res/g96/953948/s120x120/3b17a9d2-d196-4e37-867f-6f6639ea4f86.jpg"
    food.save!
  end
  10.times do |v|
    vote = User.find(rand(1..20)).votes.build
    vote.star_num = rand(1..5)
    vote.restaurant = restaurant
    vote.save!
  end
  restaurant.vote_num = restaurant.votes.average(:star_num).to_f
  restaurant.save!
  10.times do |c|
    comment = restaurant.comments.build
    comment.content = "Comment " + c.to_s
    comment.user_id = rand(1..20)
    comment.save!
  end

  5.times do |r_i|
    res_images = restaurant.res_images.create(image: "https://images.foody.vn/res/g96/953948/prof/s640x400/foody-upload-api-foody-mobile-avar166-190906143554.jpg")
  end
end
