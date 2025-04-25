resource "aws_key_pair" "clave_telematica" {
  key_name   = "ClaveTelematica"
  public_key = file("ClaveTelematica.pub")
}
