```mongodb
db.createUser({
  user: 'admin@admin.com',
  pwd: 'yapi123456',
  roles: [
 { role: "dbAdmin", db: "yapi" },
 { role: "readWrite", db: "yapi" }
  ]
})
```