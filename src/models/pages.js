var mongoose = require('mongoose')

var pageSchema = new mongoose.Schema({
    title: String,
    content: String,
    subentries: []
});

var page = mongoose.model('Pages', pageSchema);

export default page