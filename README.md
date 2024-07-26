# UFW Configuration Project

This project demonstrates the configuration of UFW (Uncomplicated Firewall) on an Ubuntu system. It includes steps for enabling UFW, allowing specific ports, and verifying the configuration.

## Project Overview

The primary goals of this project are to:
1. Install and enable UFW to ensure the firewall is active and running.
2. Allow specific ports such as SSH (port 22), Telnet (port 23), HTTP (port 80), HTTPS (port 443), and a range of custom ports (1000-2000).
3. Verify UFW status to ensure proper configuration.
4. Delete specific rules as needed.
5. Test open ports using Telnet and Nmap to ensure firewall rules are correctly applied.

## Prerequisites

- Ubuntu system
- Basic knowledge of terminal commands

## Steps

1. **Update package lists:**
    ```sh
    sudo apt update
    ```

2. **Install UFW:**
    ```sh
    sudo apt install ufw
    ```

3. **Enable UFW:**
    ```sh
    sudo ufw enable
    ```

4. **Allow specific ports:**
    ```sh
    sudo ufw allow ssh
    sudo ufw allow telnet
    sudo ufw allow http
    sudo ufw allow https
    sudo ufw allow 1000:2000/tcp
    ```

5. **Check UFW status:**
    ```sh
    sudo ufw status verbose
    sudo ufw status numbered
    ```

6. **Delete a rule (for example, rule number 6):**
    ```sh
    sudo ufw delete 6
    ```

## Verification

- **Telnet:** Use the `telnet` command to verify that port 23 (telnet) is open.
    ```sh
    telnet your_server_ip 23
    ```

- **Nmap:** Use `nmap` to scan and verify the open ports.
    ```sh
    nmap -p 23 your_server_ip
    ```

## Screenshots

Include screenshots of each step for verification:

1. **Updating package lists:**
    ![image](https://github.com/user-attachments/assets/d0a288de-8a54-47a8-95d0-5c4f8763d262)


2. **Installing UFW:**
    ![image](https://github.com/user-attachments/assets/cef1a06f-4468-4321-9a05-727d542b459b)


3. **Enabling UFW:**
   ![image](https://github.com/user-attachments/assets/da19d825-8fef-4519-beef-a4aaf3b07fb3)


4. **Allowing specific ports:**
   ![image](https://github.com/user-attachments/assets/ccbe824f-5d89-4cc9-9c31-c6f734d7363e)
   
   ![image](https://github.com/user-attachments/assets/74052bd3-120c-401f-a6ba-43cd7db9e2b2)
   
   ![image](https://github.com/user-attachments/assets/a2000bf8-1fb8-456c-b07c-b25f7b29eb86)



6. **Checking UFW status:**
    ![image](https://github.com/user-attachments/assets/270a152f-d5c6-4c1e-ba78-0bca8ab34a45)
   
    ![image](https://github.com/user-attachments/assets/a50cc2e2-4c5d-463a-ab01-8f1b3df19c78)


8. **Deleting a rule:**
    ![image](https://github.com/user-attachments/assets/579a206b-8a21-4d5b-8fcc-50c0c7c4eb8b)

9. **Telnet Check:**
    ![image](https://github.com/user-attachments/assets/22042255-f512-4206-8ad8-4f2277531e6f)

    ![image](https://github.com/user-attachments/assets/220bab3c-7cf5-4fea-bbaf-195730122f00)



## Conclusion

This project provides a comprehensive guide to configuring UFW on an Ubuntu system. By following these steps, you can ensure that your firewall is properly set up and configured to allow necessary traffic while blocking unauthorized access.


## Acknowledgements

- Inspired by the need to secure Ubuntu systems efficiently.
- Thanks to the open-source community for their invaluable tools and resources.


