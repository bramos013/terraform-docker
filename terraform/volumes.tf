resource "docker_volume" "sql-data" {
    name = "seilinux-sql-volume-data"
    driver = "local"
}

resource "docker_volume" "sql-logs" {
  name = "seilinux-sql-volume-logs"
  driver = "local"
}

resource "docker_volume" "sql-init" {
    name = "seilinux-sql-volume-init"
    driver = "local"
}