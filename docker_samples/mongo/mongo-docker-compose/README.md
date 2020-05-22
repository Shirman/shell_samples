### mongodb 开启认证
#### 方式一 通过环境变量
```yaml
environment:
  MONGO_INITDB_ROOT_USERNAME: root
  MONGO_INITDB_ROOT_PASSWORD: root123
```
该方式默认开启认证。该用户会创建在admin数据库下并且赋予root角色（超级用户）。

#### 方式二 命令行开启认证
```yaml
command:
 - auth
```
该方式需要在第一次启动的时候关闭认证，然后创建用户（见下方用户创建及权限分配）。然后偶开启认证，重启。

### 用户创建及权限分配
#### 官网文档地址
[用户管理](https://docs.mongodb.com/manual/reference/method/js-user-management)
[角色管理](https://docs.mongodb.com/manual/reference/method/js-role-management)

#### 常用操作
```javascript
//创建用户，分配角色
db.createUser({ user: "root", pwd: "root123", roles: [{ role: "userAdminAnyDatabase", db: "admin" }] });
db.createUser({ user: "product", pwd: "dev123", roles: [{ role: "readWrite", db: "product" }] });
//删除用户
db.dropUser("product");
```



