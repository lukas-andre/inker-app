# TODO: 04/01/2022

1. Al momento de hacer signIn con redes sociales, se esta creando la session antes de hacer el login oficial,
se podria hacer esto mas facil, creando primero el usuario, luego logearse y crear una session normal con esta info, así guardaremos el accessToken que es lo importante !
2. el id con el que se esta guardando la session no es el de inker, usar ese en el id ...
3. Hacer widgets reutilizables para las paginas de formulario de registro, RegisterLayout(inputs[], pageIndex) RegisterNextButton(pageIndex) RegisterBackButton(pageIndex) RegisterFinishButton(pageIndex) 
4. Add Regex validation for ExtraAddress, que sea o , Solo numero o numeros y letras y espacios