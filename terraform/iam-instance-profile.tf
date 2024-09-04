resource "aws_iam_instance_profile" "instance-profile" {
  name = "devsecops15-instance-profile"
  role = aws_iam_role.iam-role.name
}