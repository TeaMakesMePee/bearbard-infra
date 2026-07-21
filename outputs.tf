output "instance_public_ip" {
    description = "Public IP of the bot server"
    value = aws_instance.bot_server.public_ip
}

output "instance_public_dns" {
    description = "Public DNS of the bot server"
    value = aws_instance.bot_server.public_dns
}

output "ssh_command" {
    description = "Command to SSH into the instance"
    value = "ssh -i ~/.ssh/${var.key_name}.pem ubuntu@${aws_instance.bot_server.public_ip}"
}
