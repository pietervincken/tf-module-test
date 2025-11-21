resource "random_pet" "username" {
    length    = 16
    separator = "-"
}

resource "random_password" "password" {
    length           = 16
    special          = true
    override_special = "!@#$%&*()-_=+[]{}:?"
    min_numeric      = 1
    min_lower        = 1
    min_special      = 1
}

output "username" {
    value = random_pet.username.id
}

output "password" {
    value     = random_password.password.result
    sensitive = true
}