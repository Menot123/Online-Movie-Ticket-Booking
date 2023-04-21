// Define your services here
const repo = require('../repositories/blog_detail.repository')



async function getBlogDetail(matin) {
    try {
        const list = await repo.getBlogDetail(matin)

        return list
    } catch (err) {
        throw new Error('Service: Cannot get blog detail');
    }
}

async function getRelatedPosts() {
    try {
        const list = await repo.getRelatedPosts()

        return list
    } catch (err) {
        throw new Error('Service: Cannot get blog detail');
    }
}


module.exports = {
    getBlogDetail,
    getRelatedPosts
}