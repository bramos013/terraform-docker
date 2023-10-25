resource "docker_container" "seilinux-sql" {
  image = docker_image.seilinux-sql.image_id
  name  = "seilinux-sql"
  restart = "on-failure"
  
  env = [
    "POSTGRES_USER=${var.POSTGRES_USER}",
    "POSTGRES_PASSWORD=${var.POSTGRES_PASSWORD}",
    "POSTGRES_DB=${var.POSTGRES_DB}"
  ]

  networks_advanced {
    name = docker_network.sql-network.name
  }
  
  volumes {
    volume_name = "seilinux-sql-volume-logs"
    container_path = "/var/log/postgresql"
    host_path = "/sql/log"
  }

  volumes {
    volume_name = "seilinux-sql-volume-data"
    container_path = "/var/lib/postgresql/data"
    host_path = "/sql/data"
  }
}

resource "docker_container" "seilinux-backend" {
  image = docker_image.seilinux-backend.image_id
  name  = "seilinux-backend"
  restart = "on-failure"
  depends_on = [
    docker_container.seilinux-sql
  ]

  env = [

    "user=${var.user}",
    "pass=${var.pass}",
    "host=${var.host}",
    "db_port=${var.db_port}",
    "database=${var.database}"
  ]

  networks_advanced {
    name = docker_network.frontend-network.name
  }

  volumes {
    volume_name = "seilinux-backend-volume"
    container_path = "/usr/src/app"
    host_path = "/backend"
  }
}

resource "docker_container" "seilinux-frontend" {
  image = docker_image.seilinux-frontend.image_id
  name  = "seilinux-frontend"
  restart = "on-failure"
  depends_on = [   
    docker_container.seilinux-sql,
    docker_container.seilinux-backend
  ]

  networks_advanced {
    name = docker_network.frontend-network.name
  }

  networks_advanced {
    name = docker_network.sql-network.name
  }


  ports {
    internal = var.frontend_port
    external = var.frontend_port
  }

  volumes {
    volume_name = "seilinux-frontend-volume"
    container_path = "/usr/src/app"
    host_path = "/frontend"
  }
}
