#!/bin/bash

echo "=== 2-тапсырма: Логтарды талдау ==="

echo "Соңғы 20 кіру әрекеті:"
last -n 20 || true

echo "SSH журналдары:"
sudo journalctl -u ssh --no-pager -n 20 || true

echo "Сәтсіз кіру әрекеттері:"
sudo journalctl --no-pager | grep "Failed password" || true

echo "2-тапсырма аяқталды!"
