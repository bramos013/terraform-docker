variable "POSTGRES_USER" {
    type = string
    default = "admin"
}

variable "POSTGRES_PASSWORD" {
    type = string
    default = "senha_secreta"
}

variable "POSTGRES_DB" {
    type = string
    default = "seilinux"
}

variable "user" {
    type = string
    default = "admin"
}

variable "pass" {
    type = string
    default = "senha_secreta"
}

variable "host" {
    type    = string
    default = "seilinux-sql"
}

variable "db_port" {
    type    = number
    default = 5432
}

variable "database" {
    type    = string
    default = "seilinux"
}

variable "frontend_port" {
    type    = number
    default = 80
}
