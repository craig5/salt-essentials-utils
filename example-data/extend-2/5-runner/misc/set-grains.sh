sudo salt minion1.example grains.setval myenv prod
sudo salt minion2.example grains.setval myenv prod
sudo salt minion3.example grains.setval myenv stage
sudo salt minion4.example grains.setval myenv dev


sudo salt minion1.example grains.setval roles '[webserver, appserver]'
sudo salt minion2.example grains.setval roles '[database]'
sudo salt minion3.example grains.setval roles '[webserver, appserver, database]'
sudo salt minion4.example grains.setval roles '[webserver, appserver, database]'
