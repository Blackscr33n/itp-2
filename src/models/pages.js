class Page {
    constructor(mysql) {
        this.mysql = mysql;
    }

    async init(id) {
        return new Promise((resolve,reject) => {
            var query = 'SELECT * FROM pages WHERE id = ?'
            this.mysql.query(query,id, async (err, res) => {
                if(!err) {
                    this.id = res[0].id
                    this.name = res[0].name
                    this.parent_id = res[0].parent_id
                    resolve(true)
                }
            });
        })
    }

    async getAllSubpages() {
        return new Promise((resolve,reject) => {
            var query = 'SELECT * FROM pages WHERE parent_id = ?'
            mysql.query(query,this.id, async (err, res) => {
                if(!err) {
                    resolve(res)
                }
            });
        })
    }

    static async getMainPages(mysql) {
        return new Promise((resolve,reject) => {
            var query = `SELECT * FROM pages WHERE ISNULL(parent_id)`
            mysql.query(query, async (err, res) => {
                if(!err) {
                    resolve(res)
                }
            });
        })
        
    }
}
export default Page