# Creating Key-pair
resource "aws_key_pair" "tf-key" {
  key_name   = "terraform-keypair"
  public_key = file("${path.module}/id_rsa.pub")
}