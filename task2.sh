#!/bin/bash

echo "Соңғы кіру әрекеттері:"
last -n 20 || true

echo "SSH аутентификация журналдары:"
sudo journalctl -u ssh --no-pager -n 20 || true

echo "Сәтсіз кіру әрекеттері:"
sudo journalctl --no-pager | grep "Failed password" || true
