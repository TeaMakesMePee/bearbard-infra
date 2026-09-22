resource "aws_instance" "bot_server" {
    ami = "ami-0ed6a65b84536f6ce"
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.bot_sg.id]
    iam_instance_profile   = "bearbard-cloudwatch-role"

    tags = {
        Name = "bearbard-bot-prod"
        Project = "bearbard"
    }
}
