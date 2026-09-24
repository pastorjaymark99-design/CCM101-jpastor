# Final Reflection - Mission 1 to Mission 10

Looking back at this journey through CCM101 - Cloud Computing, it's clear
how much has changed since Mission 1. Back then, we were simply creating a
user account and running basic Linux commands like `whoami` and `pwd`, and
it all felt unfamiliar. By Mission 10, we were provisioning a full virtual
machine from scratch, installing and configuring Docker, writing a complete
docker-compose.yml file, hardening a server with a firewall, and scheduling
automated backups through cron - all without a step-by-step guide to
follow.

This final mission was the most challenging for us because it required
combining everything we learned across the previous missions into one
working system. Provisioning the VM and getting the networking configured
correctly (bridged adapter, SSH access) took patience, especially when the
VM briefly crashed under load during the initial Docker image downloads.
Troubleshooting that issue - recognizing a kernel soft lockup, increasing
RAM and CPU allocation, and retrying the deployment - reinforced how
important proper resource planning is in real infrastructure work.

Configuring UFW was a good reminder for us that security isn't just about
blocking everything, but about carefully allowing only what's necessary,
and always testing to make sure legitimate access (like SSH) isn't
accidentally broken in the process. Writing the backup automation script
and troubleshooting the mysqldump tablespace privilege issue also gave us
a small taste of the kind of real-world debugging that happens when
building production systems.

Overall, this final laboratory activity tied together Linux administration,
Docker containerization, network security, and automation into a single,
cohesive project. It gave us a much clearer picture of what it actually
means to design, deploy, and maintain infrastructure as a cloud engineer -
not just running individual commands, but understanding how all the pieces
work together as one system. Completing this mission as a team helped us
appreciate how collaboration, communication, and shared troubleshooting
make even a complex, independent project like this more manageable.
