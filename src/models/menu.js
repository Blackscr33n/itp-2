
class Menu {
    constructor(mysql) {
        this.mysql = mysql;
    }

    static async getAllMenuEntries(mysql) {
        return new Promise((resolve,reject) => {
            var query = `SELECT * FROM menu_entries`
            mysql.query(query, async (err, res) => {

                if(!err) {
                    resolve(res);
                }
            });
        })
        
    }
}
export default Menu