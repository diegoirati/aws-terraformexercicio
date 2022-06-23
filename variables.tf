variable "db_password" {
    type = map(string)

    default = {
        "dbpass1" = "te123456"
    }
  
}