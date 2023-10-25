resource "docker_image" "seilinux-sql" {
  name = "seilinux-sql"

  build {
    context    = "../database"
    dockerfile = "Dockerfile"
  }
}

resource "docker_image" "seilinux-backend" {
  name = "seilinux-backend"

  build {
    context    = "../backend"
    dockerfile = "Dockerfile"
  }
}

resource "docker_image" "seilinux-frontend" {
  name = "seilinux-frontend"

  build {
    context    = "../frontend"
    dockerfile = "Dockerfile"
  }
}