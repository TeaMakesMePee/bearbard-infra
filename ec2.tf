resource "aws_instance" "bot_server" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.bot_sg.id]

    tags = {
        Name = "bearbard-bot-prod"
        Project = "bearbard"
    }
}
