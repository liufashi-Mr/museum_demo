const router = require("express").Router();
const pool = require("./dataBase.js");
module.exports = router;

router.get("/userLogin", (req, res) => {
    pool.query("select * from user where username=? and password=?", [req.query.username, req.query.password], (err, data) => {
        if (data.length == 0) {
            res.json({
                code: 0
            })
            return;
        }
        res.json({
            code: 1,
            username: req.query.username,
        })
    })
})

router.get("/adminLogin", (req, res) => {
    pool.query("select * from admin where name=? and password=?", [req.query.username, req.query.password], (err, data) => {
        if (data.length == 0) {
            res.json({
                code: 0
            })
            return;
        }
        res.json({
            code: 1,
            username: req.query.username,
        })
    })
})

router.get("/userRegister", (req, res) => {
    pool.query("insert into user (username,password) values(?,?)", [req.query.username, req.query.password], (error, data) => {
        if (error) {
            res.json({
                code: 0
            })
            return;
        }
        res.json({
            code: 1
        })
    })
})

router.get("/collections", (req, res) => {
    pool.query("select * from collections", (error, data) => {
        console.log(data)
        if (error) {
            res.json({
                code: 0
            })
            return;
        }
        res.json(data);
    })
})

router.get("/detail", (req, res) => {
    pool.query("select * from collections where id =?", [req.query.id], (error, data) => {
        if (error) {
            res.json({
                code: 0
            })
            return;
        }
        res.json(data[0]);
    })
})
router.get("/add", (req, res) => {
    let time = new Date();
    console.log(req.query)
    pool.query("INSERT INTO `collections` ( `name`, `size`, `describe`, `img_url`, `time`, `age`,`integrity`, `type`) VALUES(?,?,?,?,?,?,?,?)", [req.query.name, req.query.size, req.query.describe, req.query.img_url, time, req.query.age, req.query.integrity, req.query.type], (error, data) => {
        if (error) {
            console.log(error)
            res.json({
                code: 0
            })
            return;
        }
        pool.query("select id from collections where name=?", [req.query.name], (error, data) => {
            pool.query("INSERT INTO `collectionsrecord`(id,name,infor,type) values(?,?,?,?)", [data[0].id, req.query.name, time, '入库'])
        })
        res.json({
            code: 1
        });
    })
})


router.get("/remove", (req, res) => {
    pool.query('select * from collections where name=?and id=?', [req.query.name, req.query.id], (error, data) => {
        if (error) {
            console.log(error)
            res.json({
                code: 0
            })
            return;
        }
        if (data[0]) {
            pool.query("delete from collections where name=? and id=?", [req.query.name, req.query.id], (error, data) => {
                pool.query("INSERT INTO `collectionsrecord`(id,name,infor,type) values(?,?,?,?)", [req.query.id, req.query.name, new Date(), '出库'])
            });
            res.json({
                code: 1
            });
        }
    });
})

router.get("/getRecord", (req, res) => {
    pool.query("select * from collectionsrecord ORDER BY infor", (error, data) => {
        if (error) {
            console.log(error);
            return;
        }
        res.json(data);
    })
})

router.get("/admin", (req, res) => {
    pool.query("select username from user ", (err, data) => {
        if (data.length == 0) {
            res.json({
                code: 0
            })
            return;
        }
        res.json({
            code: 1,
            username: data,
        })
    })
})
router.get("/delUser", (req, res) => {
    pool.query("delete  from user where username=?", [req.query.username])
})


router.get("/addAccident", (req, res) => {
    let time = new Date();
    pool.query("select * from collections where name=? and id=?", [req.query.name, req.query.id], (error, data) => {
        console.log(data)
        if (error) {
            console.log(error)
            res.json({
                code: 0
            })
            return;
        }
        if (data[0]) {
            pool.query("INSERT INTO `accident` ( `name`, `id`, `problem`, `time`, `solve`) VALUES(?,?,?,?,?)", [req.query.name, req.query.id, req.query.problem, time, req.query.solve])
            res.json({
                code: 1
            });
        }else{
            res.json({
                code: 0
            });
        }
    })
})

router.get("/getAccident", (req, res) => {
    pool.query("select * from accident ORDER BY time ", (error, data) => {
        if (error) {
            console.log(error);
            return;
        }
        res.json(data);
    })
})

router.get("/dealAccident", (req, res) => {
    console.log(req.query);
    pool.query("update collections set integrity=? where id=?",[req.query.integrity,req.query.id])
    let solveValue='已处理 负责人:'+req.query.fName
    pool.query("update accident set solve=? where id=?",[solveValue,req.query.id]);
    res.json({
        code: 1
    })
})

router.get("/getType", (req, res) => {
    pool.query("select * from collections", (error, data) => {
        if (error) {
            console.log(error);
            return
        }
        console.log(data);
        res.json(data);
    })
})

router.get("/problem", (req, res) => {
    pool.query('select problem from accident where id=?',[req.query.id],(error,data)=>{
        res.json(data);
    })
})

router.get("/search", (req, res) => {
    pool.query("select * from collections where name like ? and age like ?", ["%" + req.query.name + "%","%"+req.query.age+"%"], (err, data) => {
        res.json(data);
    })
})