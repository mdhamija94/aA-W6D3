# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtworkShare.delete_all
Artwork.delete_all
User.delete_all

users = User.create([{ username: 'artboi420' }, { username: 'artyart' }, { username: 'sellmeyourart' }, { username: 'artgang' } ])

Artwork.create({ title: 'this is art', image_url: 'asljfasmdkf', artist_id: User.first.id})
Artwork.create({ title: 'this is not art', image_url: 'asedfasdf', artist_id: User.second.id})
Artwork.create({ title: 'hello I am art', image_url: 'asdkfasdfas', artist_id: User.third.id})
Artwork.create({ title: 'buy me', image_url: 'zxvzxvdfas', artist_id: User.first.id})
Artwork.create({ title: 'mona lisa', image_url: 'zxcnvjkzxmv', artist_id: User.first.id})
Artwork.create({ title: 'not mona lisa', image_url: 'aoiwereioaw', artist_id: User.third.id})

ArtworkShare.create({viewer_id: User.second.id, artwork_id: Artwork.first.id})
ArtworkShare.create({viewer_id: User.third.id, artwork_id: Artwork.first.id})
ArtworkShare.create({viewer_id: User.fourth.id, artwork_id: Artwork.first.id})
ArtworkShare.create({viewer_id: User.first.id, artwork_id: Artwork.second.id})
ArtworkShare.create({viewer_id: User.fourth.id, artwork_id: Artwork.first.id})
ArtworkShare.create({viewer_id: User.third.id, artwork_id: Artwork.fifth.id})
ArtworkShare.create({viewer_id: User.fourth.id, artwork_id: Artwork.fifth.id})
ArtworkShare.create({viewer_id: User.first.id, artwork_id: Artwork.third.id})