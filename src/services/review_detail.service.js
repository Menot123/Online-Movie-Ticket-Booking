// Define your services here
const repo = require('../repositories/review_detail.repository')



async function getReviewDetail(matin) {
    try {
        const list = await repo.getReviewDetail(matin)

        return list
    } catch (err) {
        throw new Error('Service: Cannot get review detail');
    }
}

async function getRelatedPosts() {
    try {
        const list = await repo.getRelatedPosts()

        return list
    } catch (err) {
        throw new Error('Service: Cannot get review detail');
    }
}


module.exports = {
    getReviewDetail,
    getRelatedPosts
}