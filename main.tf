resource "local_file" "pet" {
filename = "/root/pets.txt"
content = "My cat is ${random_pet.mypet.id}"     (random_pet = resource type,mypet = resource name, id = attribute)
} 
resource "random_pet" "mypet" {
prefix = "MR"
separator = "."
length = "1"
}
