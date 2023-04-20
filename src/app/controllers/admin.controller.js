const adminServices = require('../../services/admin.service')

async function manageAccounts(req, res, next) {
    try {
        const fetch = await
            import('node-fetch');
        const response = await fetch.default(`http://localhost:3000/admin/api/accounts`);
        const data = await response.json();
        if (data) {
            res.render('ad_account', { layout: false, data: data })
        } else {
            res.render('404')
        }
    } catch (err) {
        console.error('An error when get list account', err.message);
        next(err);
    }
}

async function getAccounts(req, res, next) {
    try {
        const list = await adminServices.getAccounts();
        res.status(200).json(list);
    } catch (err) {
        console.error('An error when get accounts', err.message);
        next(err);
    }
}

async function handleDelete(req, res, next) {

    try {
        if (req.params.id) {
            const status = await adminServices.handleDelete(req.params.id);
            res.status(200).json({ message: 'Delete account success', status: status, id: req.params.id });
        } else {
            res.status(404).json({ message: 'Delete account failed' });
        }

    } catch (err) {
        console.error('An error when get accounts', err.message);
        next(err);
    }
}

async function getInfo(req, res, next) {
    try {
        if (req.params.id) {
            const result = await adminServices.getInfo(req.params.id);
            res.status(200).json({ message: `getInfo user ${req.params.id} succesfully`, result: result, id: req.params.id });
        } else {
            res.status(404).json({ message: 'getInfo user failed' });
        }
    } catch (err) {
        console.error('An error when get info', err.message);
        next(err);
    }
}

async function updateInfo(req, res, next) {
    try {
        if (req.params.id && req.body.sodienthoai) {
            const status = await adminServices.updateInfo(req.params.id, req.body.sodienthoai, req.body.pass);
            res.status(200).json({ message: `Update user ${req.params.id} succesfully`, status: status, id: req.params.id });
        } else {
            res.status(404).json({ message: 'Update user failed' });
        }
    } catch (err) {
        console.error('An error when get info', err.message);
        next(err);
    }
}

async function getResponsesAPI(req, res, next) {
    try {
        const status = await adminServices.getResponsesAPI();
        if (status.length > 0) {
            res.status(200).json({ message: `Get responses successfully`, status: status });
        } else {
            res.status(400).json({ message: `Get responses fail`, status: status });
        }

    } catch (err) {
        console.error('An error when get responeses api', err.message);
        next(err);
    }
}

async function getResponses(req, res, next) {
    try {
        const fetch = await
            import('node-fetch');
        const response = await fetch.default(`http://localhost:3000/admin/api/phan-hoi`);
        const data = await response.json();
        console.log(data)
        if (data) {
            res.render('ad_responses', { layout: false, data: data.status })
        } else {
            res.render('404')
        }

    } catch (err) {
        console.error('An error when get response', err.message);
        next(err);
    }
}

async function getSuatChieuAPI(req, res, next) {
    try {
        const status = await adminServices.getSuatChieuAPI();
        if (status.length > 0) {
            res.status(200).json({ message: `Get movie session successfully`, status: status });
        } else {
            res.status(400).json({ message: `Get movie session fail`, status: status });
        }

    } catch (err) {
        console.error('An error when get responeses api', err.message);
        next(err);
    }
}

async function getSuatChieu(req, res, next) {
    try {

        const fetch = await import('node-fetch');

        const response = await fetch.default(`http://localhost:3000/admin/api/suat-chieu`);
        const data = await response.json();
        if (data) {
            const format = formatData(data.status)
            res.render('ad_suatchieu', { layout: false, data: format })
        } else {
            res.render('404')
        }

    } catch (err) {
        console.error('An error when get response', err.message);
    }
}

async function manageSales(req, res, next) {
    try {
        const fetch = await
            import('node-fetch');
        const response = await fetch.default(`http://localhost:3000/admin/api/sales`);
        const data = await response.json();
        if (data) {
            res.render('ad_sales', { layout: false, data: data })
        } else {
            res.render('404')
        }
    } catch (err) {
        console.error('An error when get list account', err.message);
        next(err);
    }
}

async function getSuatChieu2(req, res, next) {
    try {
        if (req.body.tenphim) {
            const data = await adminServices.getSuatChieu(req.body.tenphim)
            if (data.length > 0) {
                const format = formatData(data)
                res.render('ad_suatchieu', { layout: false, data: format })
            } else {
                res.render('404')
            }
        }
    } catch (err) {
        console.error('An error when get response', err.message);
    }
}

async function getSales(req, res, next) {
    try {
        const list = await adminServices.getSales();
        res.status(200).json(list);
    } catch (err) {
        console.error('An error when get accounts', err.message);
        next(err);
    }
}

function formatDate(dateString) {
    var date = new Date(dateString);
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    if (month < 10) {
        month = '0' + month;
    }
    if (day < 10) {
        day = '0' + day;
    }
    return year + '-' + month + '-' + day;
}

function formatData(scheduleList) {
    for (var i = 0; i < scheduleList.length; i++) {
        scheduleList[i].ngaychieu = formatDate(scheduleList[i].ngaychieu);
    }
    return scheduleList;
}

async function getMaPhimAPI(req, res, next) {
    try {
        const status = await adminServices.getMaPhimAPI();
        if (status.length > 0) {
            res.status(200).json({ message: `Get films successfully`, status: status });
        } else {
            res.status(400).json({ message: `Get films fail`, status: status });
        }

    } catch (err) {
        console.error('An error when get responeses api', err.message);
    }
}

async function getSale(req, res, next) {
    try {
        if (req.params.id) {
            const result = await adminServices.getSale(req.params.id);
            res.status(200).json({ message: `getSale id ${req.params.id} succesfully`, result: result, id: req.params.id });
        } else {
            res.status(404).json({ message: 'getSale user failed' });
        }
    } catch (err) {
        console.error('An error when get info', err.message);
        next(err);
    }
}

async function addMaPhim(req, res, next) {
    try {
        const status = await adminServices.addMaPhim(req.body);
        if (status > 0) {
            res.status(200).json({ message: `Add film code successfully`, status: status });
        } else {
            res.status(400).json({ message: `Add film code fail`, status: status });
        }

    } catch (err) {
        console.error('An error when  add film code', err.message);
    }
}

async function updateSale(req, res, next) {
    try {
        if (req.params.id && req.body.giamgia) {
            data = req.body;
            const status = await adminServices.updateSale(req.params.id, data.tenkhuyenmai, data.chitiet, data.giamgia);
            res.status(200).json({ message: `Update sale ${req.params.id} succesfully`, status: status, id: req.params.id });
        } else {
            res.status(404).json({ message: 'Update sale failed' });
        }
    } catch (err) {
        console.error('An error when update sale', err.message);
        next(err);
    }
}

async function hideMaPhim(req, res, next) {
    try {
        if (req.params.masuatchieu) {
            const status = await adminServices.hideMaPhim(req.params.masuatchieu);
            if (status > 0) {
                res.status(200).json({ message: `Hide film code successfully`, status: status });
            } else {
                res.status(400).json({ message: `Hide film code fail`, status: status });
            }
        }


    } catch (err) {
        console.error('An error when  hiden film code', err.message);
        next(err);
    }
}

async function getPhimAPI(req, res, next) {
    try {
        const status = await adminServices.getPhimAPI();
        if (status.length > 0) {
            res.status(200).json({ message: `Get films successfully`, status: status });
        } else {
            res.status(400).json({ message: `Get films fail`, status: status });
        }

    } catch (err) {
        console.error('An error when get responeses api', err.message);
    }
}

async function handleDeleteSale(req, res, next) {

    try {
        if (req.params.id) {
            const status = await adminServices.handleDeleteSale(req.params.id);
            res.status(200).json({ message: 'Delete sale success', status: status, id: req.params.id });
        } else {
            res.status(404).json({ message: 'Delete sale failed' });
        }

    } catch (err) {
        console.error('An error when delete sale', err.message);
        next(err);
    }
}

async function addSale(req, res, next) {
    try {
        if (req.body.giamgia) {
            data = req.body;
            const status = await adminServices.addSale(data.tenkhuyenmai, data.chitiet, data.giamgia);
            res.status(200).json({ message: `Add sale ${req.params.id} succesfully`, status: status, id: req.params.id });
        } else {
            res.status(404).json({ message: 'Add sale failed' });
        }
    } catch (err) {
        console.error('An error when add sale', err.message);
        next(err);
    }
}

module.exports = {

    manageAccounts, getAccounts, handleDelete, getInfo, updateInfo, getResponses, getResponsesAPI, getSuatChieuAPI,
    getSuatChieu, getMaPhimAPI, addMaPhim, hideMaPhim, getPhimAPI, getSuatChieu2, getSales,
    manageSales,getSale,updateSale,handleDeleteSale, addSale, 
}
