function primerCaracterNoRepetido(cadena) {
    for (let i = 0; i < cadena.length; i++) {
        if (cadena.indexOf(cadena[i]) === cadena.lastIndexOf(cadena[i])) {
            return cadena[i];
        }
    }
    return null;
}
console.log(primerCaracterNoRepetido('abacddbeecf'));