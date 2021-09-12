locals {
  UserList = file("${path.module}/UserAccess.csv")
  allUser = csvdecode(local.UserList)

}


resource "aws_iam_user" "allUserList" {
  for_each = {for user in local.allUser: user.UserName => user}
  name = each.value.UserName
  path = "/system/"
}