#Start and Stop Virtual Machines in Azure.

What is Automation Account?

The feature aims to automate the start and stop of virtual machines on Azure, Windows or Linux.
Automation accounts allow you to create runbooks, which allow you to create for the most diverse types of tasks.


Environment:

As an example I will use two virtual machines named VM-01 and VM-02.
The automation of the start and stop of the machines will be configured following the information below:

• Start must occur every day at 8am

• The stop(Deallocated) must occur every day at 10pm

• Machines will start/stop when they have the Start-Stop-VMs tag
![image](https://user-images.githubusercontent.com/99050138/191828152-f6cf658f-e535-45c8-a2b0-b0e512c84425.png)
![image](https://user-images.githubusercontent.com/99050138/191839186-3fba484b-ec72-4185-bd9f-02088b66b6eb.png)

1- Login in Azure Portal
2- Create an Resource Group for Automation Account
![image](https://user-images.githubusercontent.com/99050138/191829416-a7854ee2-8962-438d-8504-bb09d5428f0c.png)
![image](https://user-images.githubusercontent.com/99050138/191829874-d7acce7a-ef4b-44f2-b66f-3ae840840907.png)
![image](https://user-images.githubusercontent.com/99050138/191830045-8cbef497-63a0-4a9f-b3da-4b376e553927.png)

3- As we can see we have the resource group for Automation Account that is RG-Automation
![image](https://user-images.githubusercontent.com/99050138/191830420-0c37ea34-3036-4344-836d-0dac3ea5b5ea.png)

4- Search for Automation Account and click.
![image](https://user-images.githubusercontent.com/99050138/191830715-f064734c-f8cc-409a-ae80-1bbfb4308d2f.png)

5- Click in create and follow the process below.
![image](https://user-images.githubusercontent.com/99050138/191830895-21c1534a-48c6-4f25-af00-dbc3b17192ad.png)
![image](https://user-images.githubusercontent.com/99050138/191831180-3d4deedc-410a-4a82-b4fa-e9e6f55f88d9.png)

6- After creater, open the resource --> go to Account Settings --> Run As accounts --> Azure Run As Account --> Create
![image](https://user-images.githubusercontent.com/99050138/191832277-61e42d43-544d-47b1-8e71-1493e83103ef.png)
![image](https://user-images.githubusercontent.com/99050138/191832677-0bdb5025-fca2-4d94-abb5-a992d06bf652.png)

7- Configure the schedules - Example: Stop 5pm / Start 5:30pm
![image](https://user-images.githubusercontent.com/99050138/191834160-31c24ea9-10f6-4974-8614-f04a3afff2ce.png)
![image](https://user-images.githubusercontent.com/99050138/191834375-ff1bec2c-d11e-4c07-92db-23c056289a4d.png)
![image](https://user-images.githubusercontent.com/99050138/191834431-18d2d61f-bdbd-4e59-bf52-998184f31d2b.png)

8- Configure the Runbooks
![image](https://user-images.githubusercontent.com/99050138/191834607-2290d9b9-8501-4804-8a13-b24d26bd5c5d.png)
![image](https://user-images.githubusercontent.com/99050138/191834890-d09fa1ef-80db-4629-aaf0-27139b0c65c4.png)
![image](https://user-images.githubusercontent.com/99050138/191835095-bd864355-9ba5-4c4c-9fb2-2adafd43834b.png)

9- Once created, enter the StarVMs runbook and click on EDIT. Copy and paste the contents of the startvms.ps1 and click in Publish(Yes).

• It is necessary to link the schedule we created to the runbook

Start Runbook - startvms.ps1

![image](https://user-images.githubusercontent.com/99050138/191836163-b28e5af6-33d1-4be6-9575-69b93f7685b5.png)
![image](https://user-images.githubusercontent.com/99050138/191836347-b03af704-b308-4742-a101-7bc5233162c5.png)
![image](https://user-images.githubusercontent.com/99050138/191837252-ea7c8245-001f-4b1b-8041-c8ba0e1b08c4.png)
![image](https://user-images.githubusercontent.com/99050138/191837322-9073b32d-bc75-4539-90f1-788f7f63caca.png)
![image](https://user-images.githubusercontent.com/99050138/191837420-001d2f7f-18f2-418c-9e16-deac52e5d138.png)

Stop Runbook - stopvms.ps1

![image](https://user-images.githubusercontent.com/99050138/191836555-1236ba3d-490a-4f9b-bcac-fad837ec5e9e.png)
![image](https://user-images.githubusercontent.com/99050138/191836775-8a48c039-573f-44e0-90c1-e7b53aab5d74.png)
![image](https://user-images.githubusercontent.com/99050138/191837620-275435be-4847-486b-a496-65aae4154d79.png)
![image](https://user-images.githubusercontent.com/99050138/191837708-89612ba0-a86c-4b16-bb8c-139c20662545.png)

Logs
![image](https://user-images.githubusercontent.com/99050138/191840267-60c1bc48-26a4-4011-80c0-689f168bf1db.png)
![image](https://user-images.githubusercontent.com/99050138/191845475-6a05066c-b2e8-4938-8ae3-c081999b9872.png)
![image](https://user-images.githubusercontent.com/99050138/191845595-735907b9-0fc4-459f-ae65-d316fb666077.png)















