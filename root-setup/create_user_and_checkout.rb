# -*- coding: utf-8 -*-
unless Process.uid == 0
  puts "Please run as root"
  exit
end

require 'readline'
user = nil
loop do
  user = Readline.readline('Enter new username: ')
  proceed = Readline.readline("Create user #{user}? (y/n) ")
  if proceed =~ /^y/
    break
  else
    next
  end
end

system "useradd #{user}"
system "passwd #{user}"
system %{echo '#{user}\tALL=(ALL)\tALL' | tee -a /etc/sudoers}
unless system %{grep PATH /etc/sudoers}
  system %{echo 'Defaults\tenv_keep += "PATH"' | tee -a /etc/sudoers}
end

system "cd /home/#{user} ; sudo -u #{user} -H git clone git://github.com/kwappa/centos-setup.git /home/#{user}/setup"
