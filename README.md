# CompuNube-Parcial2
Segundo parcial primer punto de Computación en la Nube
Para ejecutar el terraform junto con el ansible, es necesario ubicarse en la carpeta terraform de la carpeta compartida:
```
cd /vagrant/terraform/
```

Una vez ahí, se ejecuta lo siguiente:
```
terraform init
terraform plan
terraform apply
```

una vez llegue al apply, va a preguntar si deseea continuar, solo entonces se coloca ```yes``` como respuesta

Y listo, solo queda verificar en la ip de la máquina target [http://192.168.50.3] para ver el servicio desplegado.
Si se realiza algún tipo de cambio al servicio, solo basta con repetir los últimos 3 comandos y se actualizaría la visualización en la url de forma segura.
