var sqlMap = {
    user: {
        add: 'insert into user (username, email, password) values ("user","2020","2020")',
        select: 'select * from user'
    }
}

module.exports = sqlMap;