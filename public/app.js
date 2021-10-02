function add_to_cart(id)
{
    let key = 'product_' + id
    let x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);

    let keys = Object.keys(localStorage);
    for(let i=0;i<keys.length;i++){
        let key = keys[i];
        console.log(key, localStorage[key]);
        //store here "both names" where you want them
        //you can also access each element with localStorage[key].name, localStorage[key].country, etc.
    }
}


