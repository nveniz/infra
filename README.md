# infra

This repository contains a collection of Ansible roles designed to automate the deployment of various services on a VPS (Virtual Private Server). The default playbook included in this bundle orchestrates the deployment of SSH, Git, mail, and web servers on the target machine.

*Discalmer: Only tested on a Debian target machine.*

## Features
   - **Modular and Flexible**.
   - Focused on providing a basic yet **secure server configuration**.
   - **Automatic Updates** using [unattended-upgrades](https://packages.debian.org/search?keywords=unattended-upgrades).
   - **Firewall using iptables**.
   - **Wildcard TLS certificate** using Certbot with DNS-01 challenges.
   - **Automatic Certificate Renewal**.
   - **Fail2ban** with custom settings, including increasing ban times and persisting bans across reboots, to protect against brute force attacks.
   - **Rootless Docker Installation**, enhancing security by restricting access to system resources.
   - [**Dockermail**](https://docker-mailserver.github.io/docker-mailserver/latest/) as the mail server, complete with email aliases, restrictions, DKIM (DomainKeys Identified Mail) support and much more.
   - **Automatic Docker Images Updates**.
## Requirements
   - **apt Package Manager**: The remote machine must have the apt package manager installed.
   - **Certbot DNS Plugins**: Certbot requires DNS plugins and API keys to obtain wildcard TLS certificates. Ensure your DNS provider [supports](https://eff-certbot.readthedocs.io/en/latest/using.html#dns-plugins) Certbot's DNS plugins and obtain API keys as necessary.

## Usage
   - **Configuration**: Customize the roles according to your requirements by setting appropriate Ansible variables. Ensure that all necessary variables are properly configured to achieve desired behavior.
   - **Execution**: Execute the playbook with Ansible, specifying the desired inventory file and playbook.
```bash
ansible-playbook -i inventory.yml playbook.yml
```
 Replace inventory.yml with your inventory file and playbook.yml with the playbook containing the roles to execute.
   - Tagging: The roles provide tags to facilitate selective execution of specific tasks. Use tags to execute only the tasks relevant to your current needs.

## Customization

   - **Ansible Variables**: Customize the roles by adjusting the values of Ansible variables. The variables have clear and intuitive names, making configuration straightforward.
   - **User Input**: Certain variables may require user input if they are found to be empty or unset. Ensure all required variables are properly set to ensure the roles function as intended.

## Aknowledgements:

Special thanks to [Jeff Geerling](https://github.com/geerlingguy) for providing easy to understand and clean ansible roles that were my basis that I build on many of my roles. This project was heavily inspired by the following:
- https://github.com/geerlingguy/ansible-role-docker
- https://github.com/geerlingguy/ansible-role-security
- https://github.com/geerlingguy/ansible-role-firewall
- https://github.com/hmlkao/ansible-docker-mailserver
## Contribution

Contributions to this repository are welcome! If you have improvements, bug fixes, or new features to suggest, feel free to submit a pull request.

## License

This project is licensed under the MIT License.
