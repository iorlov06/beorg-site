# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

localities = Locality.create([
                         {name: 'Москва'},
                         {name: 'Саратов'},
                         {name: 'Ростов'},
                         {name: 'Санкт Петербург'},
                         {name: 'Волгоград'},
                         {name: 'Калуга'},
                         {name: 'Казань'},
                         {name: 'Севастополь'}
])
endpoints = Endpoint.create([
                            {corpus: '1', flat: '9',
                            house_number: 14, person_name: 'Прокопченко Андрей', person_phone: '+79152244612',
                            postal_code: 770031 , street_name: 'Варшавская'},

                            {corpus: '1', flat: '12',
                            house_number: 11, person_name: 'Общая Василиса', person_phone: '+79651175737',
                            postal_code: 830451, street_name: 'Проспект Ленина'},

                            {corpus: '3', flat: '144',
                            house_number: 3, person_name: 'Череповец Ольга', person_phone: '+79236661212',
                            postal_code: 150951, street_name: 'Савеловская'},

                            {corpus: '2а', flat: '87',
                            house_number: 8, person_name: 'Шмин Василий', person_phone: '+79158742839',
                            postal_code: 711400, street_name: 'Кочновский проезд'},

                            {corpus: '1', flat: '23',
                            house_number: 7, person_name: 'Бастионов Владимир', person_phone: '+79124829572',
                            postal_code: 121110, street_name: 'Бакинская'},

                            {corpus: 'Б', flat: '083',
                            house_number: 2, person_name: 'Лазарева Рита', person_phone: '+79182846789',
                            postal_code: 300450, street_name: 'Маковского'},

                            {corpus: '1', flat: '237',
                            house_number: 34, person_name: 'Царицына Лариса', person_phone: '+79601597328',
                            postal_code: 141414, street_name: '7-я гвардейская'},

                            {corpus: '1', flat: '13',
                            house_number: 12, person_name: 'Светловский Алексей', person_phone: '+79735672389',
                            postal_code: 331900, street_name: 'Парка победы'},

                            {corpus: '7с', flat: '142',
                            house_number: 74, person_name: 'Праведный Сибул', person_phone: '+79151847213',
                            postal_code: 402670, street_name: 'Срезная'},
])
users = User.create([
                    {role: 0, authorized: true, email: 'chemikate@mail.ru', username: 'chemikate',  firstname: 'Екатерина',
                    lastname: 'Чеминская', partonym: 'Олеговна', phone: '+71234567890'},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'svaine17@gmail.com', username: 'svaine',
                    encrypted_password: '[B@60891a0', firstname: 'Алексей',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Марынев', partonym: 'Васильевич', phone: '+72345678901',
                    remember_created_at: to_date('13.10.2015 13:40:53','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'zdv007@mail.ru', username: 'vdz700',
                    encrypted_password: '[B@1c90a278', firstname: 'Дмитрий',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Заволосный', partonym: 'Валерьевич', phone: '+73456789012',
                    remember_created_at: to_date('19.10.2015 17:21:13','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 2, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'aaNugaev@gmail.com', username: 'admin1',
                    encrypted_password: '[B@5b9a82ee', firstname: 'Артем',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Нугаев', partonym: 'Админович', phone: '+74567890123',
                    remember_created_at: to_date('21.11.2015 16:00:20','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'ahmissvalera@mail.ru', username: 'valeriaOfBeauty',
                    encrypted_password: '[B@7d0a063d', firstname: 'Валерия',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Ахметсафина', partonym: 'Закиевна', phone: '+75678901234',
                    remember_created_at: to_date('28.10.2015 21:12:45','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'nezlobina17101997@gmail.com', username: 'nezloMa',
                    encrypted_password: '[B@1d1fceed', firstname: 'Мария',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Незлобина', partonym: 'Сергеевна', phone: '+76789012345',
                    remember_created_at: to_date('04.12.2015 09:11:03','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 1, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'ziIlyas@gmail.com', username: 'admin2',
                    encrypted_password: '[B@134a388b', firstname: 'Ильяс',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Замуруев', partonym: 'Иностранович', phone: '+77890123456',
                    remember_created_at: to_date('21.11.2015 16:03:14','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'mazortur@mail.ru', username: 'mazortur',
                    encrypted_password: '[B@6dc63791', firstname: 'Артур',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Мазок', partonym: 'Геннадьевич', phone: '+78901234567',
                    remember_created_at: to_date('27.12.2015 23:59:49','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'zamoden@gmail.com', username: 'dendenden',
                    encrypted_password: '[B@706a48e4', firstname: 'Денис',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Заморев', partonym: 'Ильясович', phone: '+79012345678',
                    remember_created_at: to_date('07.01.2016 10:12:14','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0},

                    {role: 0, authorized: false, current_sign_in_at: nil,
                    current_sign_in_ip: '', email: 'SmokingGirl228@gmail.com', username: 'smokegirlsmoke',
                    encrypted_password: '[B@51d7aa64', firstname: 'Олеся',
                    last_sign_in_at: nil, last_sign_in_ip: '', confirmation_token: nil,
                    confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil,
                    lastname: 'Курина', partonym: 'Олеговна', phone: '+70123456789',
                    remember_created_at: to_date('13.01.2016 00:00:00','DD.MM.YYYY HH24:MI:SS'), reset_password_sent_at: nil,
                    reset_password_token: '', sign_in_count: 0}
])

partners = Partner.create([
                          {description: 'partner1', link: 'http:partner1.com', logo_url: 'http:partner1.com/content/imgs/logo.png',
                          name: 'partner1', phone_number: '+79151112233'},

                          {description: 'partner2', link: 'http:partner2.com', logo_url: 'http:partner2.com/content/imgs/logo.png',
                          name: 'partner2', phone_number: '+79152223344'},

                          {description: 'partner3', link: 'http:partner3.com', logo_url: 'http:partner3.com/content/imgs/logo.png',
                          name: 'partner3', phone_number: '+79153334455'},

                          {description: 'partner4', link: 'http:partner4.com', logo_url: 'http:partner4.com/content/imgs/logo.png',
                          name: 'partner4', phone_number: '+79154445566'},

                          {description: 'partner5', link: 'http:partner5.com', logo_url: 'http:partner5.com/content/imgs/logo.png',
                          name: 'partner5', phone_number: '+79155556677'},

                          {description: 'partner6', link: 'http:partner6.com', logo_url: 'http:partner6.com/content/imgs/logo.png',
                          name: 'partner6', phone_number: '+79156667788'},

                          {description: 'partner7', link: 'http:partner7.com', logo_url: 'http:partner7.com/content/imgs/logo.png',
                          name: 'partner7', phone_number: '+79157778899'},

                          {description: 'partner8', link: 'http:partner8.com', logo_url: 'http:partner8.com/content/imgs/logo.png',
                          name: 'partner8', phone_number: '+79158889900'},

                          {description: 'partner9', link: 'http:partner9.com', logo_url: 'http:partner9.com/content/imgs/logo.png',
                          name: 'partner9', phone_number: '+79159990011'}
])

parcels = Parcel.create([
                        {delivery_type: 1, fragile: false, height: 14.2,
                        length: 150.1, parcel_type: 1, departure_id: localities.where(['name = ?', 'Москва']).first,destination_id: localities.where(['name = ?', 'Санкт Петербург']).first,
                        price: 1600, wight: 50, weight: 7.1},

                        {delivery_type: 3, fragile: false, height: 17.8,
                        length: 58.8, parcel_type: 1, departure_id: localities.where(['name = ?', 'Волгоград']).first,destination_id: localities.where(['name = ?', 'Ростов']).first,
                        price: 50000, wight: 40, weight: 0.2},

                        {delivery_type: 2, fragile: true, height: 37.1,
                        length: 60, parcel_type: 1, departure_id: localities.where(['name = ?', 'Саратов']).first,destination_id: localities.where(['name = ?', 'Севастополь']).first,
                        price: 4300, wight: 32, weight: 0.4},

                        {delivery_type: 1, fragile: false, height: 55,
                        length: 12.6, parcel_type: 2, departure_id: localities.where(['name = ?', 'Калуга']).first,destination_id: localities.where(['name = ?', 'Москва']).first,
                        price: 2100, wight: 39, weight: 0.01},
])

orders = Order.create([
                      {capture_time: to_date('14:12:22','HH24:MI:SS'), email: 'admin14@gmail.com', status: 1, partner_id: 1, capture_time: Time.new(2016, 1, 27, 17, 20, 0),
                      endpoint_id: 1, note: 'fragile!', parcel_id: 1, departure_point_id: 1, destination_point_id: 2, user_id: 6},

                      {capture_time: to_date('17:19:13','HH24:MI:SS'), email: 'admin14@gmail.com', status: 1, partner_id: 2, capture_time: Time.new(2016, 1, 24, 17, 20, 0),
                      endpoint_id: 2, note: 'none', parcel_id: 2, departure_point_id: 3, destination_point_id: 4, user_id: 3},

                      {capture_time: to_date('14:12:22','HH24:MI:SS'), email: 'admin14@gmail.com', status: 1, partner_id: 3, capture_time: Time.new(2016, 1, 29, 17, 0, 0),
                      endpoint_id: 3, note: 'none', parcel_id: 3, departure_point_id: 5, destination_point_id: 6, user_id: 4},

                      {capture_time: to_date('14:12:22','HH24:MI:SS'), email: 'admin14@gmail.com', status: 1, partner_id: 6, capture_time: Time.new(2016, 1, 26, 19, 0, 0),
                      endpoint_id: 4, note: 'none', parcel_id: 4, departure_point_id: 7, destination_point_id: 8, user_id: 2}
])


reviews = Review.create([
                        {description: 'everything is ok!', mark: 4, user_id: 3},
                        {description: 'service at the highest level', mark: 5, user_id: 2},
                        {description: 'i loved this girls voice I spoked on the phone with', mark: 5, user_id: 4},
])
