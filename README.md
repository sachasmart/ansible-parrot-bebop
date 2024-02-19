![](https://techcrunch.com/wp-content/uploads/2015/03/parrot-bebop-camera.jpg?w=990&crop=1)

# Ansible Bebop Parrot

This is an Ansible playbook to configure a [Parrot Bebop drone (1 or 2)](https://www.parrot.com/en/support/documentation/bebop-range).

This repo also has a [shortpress_5.sh](shortpress_5.sh) script that is used to copy `.pud` files to the `/media` directory in the drone. `.pud` files hold the gps data for flights on the drone. This is used as the drone removes `.pud` files on boot, whereas I would like to map the flight data with [QGIS](https://qgis.org/en/site/).

## Requirements

- [Ansible](https://www.ansible.com/)
  - Basic Understanding of Ansible
- [Bebop Drone](https://www.parrot.com/en/drones/parrot-bebop-2)

## Usage

Run the playbook with the following command:

```bash
ansible-playbook -i inventory main.yaml
```

You can also add an `ansible.cfg` file to the directory to specify the inventory file and the user to connect to the drone with.

## TODO

- Add the custom [shortpress_5.sh](shortpress_5.sh) script to the playbook.
