# busnt_test

Doc deploy project Busnt 

1 : https://github.com/mana147/busnt_test.git
2 : cài đặt Apache và config
3 : cài đặt mysql và phpmyadmin
4 : cài đặt redis 
5 : add project và config

-----------------------------------------------------------------------------------------

I : https://github.com/mana147/busnt_test.git

-----------------------------------------------------------------------------------------

II : cài đặt Apache và config

1. Cập nhật hệ thống
```bash
sudo apt update 
sudo apt upgrade
```
2. Cài đặt Apache
```bash
sudo apt install apache2 
```
3. Kiểm tra dịch vụ Apache
Sau khi cài đặt, kiểm tra trạng thái của dịch vụ Apache bằng lệnh:
```bash
sudo systemctl status apache2
```
Dịch vụ Apache sẽ tự động khởi động sau khi cài đặt.
Bạn có thể truy cập máy chủ web của mình bằng cách mở trình duyệt và truy cập địa chỉ IP của máy chủ hoặc http://localhost.

4. Cấu hình Tường lửa (nếu cần)
Nếu máy chủ của bạn có tường lửa, bạn cần mở cổng 80 (HTTP) và 443 (HTTPS):
```bash
sudo ufw allow 'Apache'
```
Bạn có thể kiểm tra trạng thái của tường lửa bằng lệnh:
```bash
sudo ufw status
```

5. Cấu hình Apache
Các tệp cấu hình của Apache thường nằm trong thư mục /etc/apache2. Các tệp chính bao gồm:

* apache2.conf: Tệp cấu hình chính của Apache.
* sites-available/: Chứa các tệp cấu hình cho các trang web riêng lẻ. Để kích hoạt một trang web, bạn cần tạo một tệp trong thư mục này và kích hoạt nó bằng cách sử dụng lệnh a2ensite.
* sites-enabled/: Chứa các liên kết tượng trưng (symbolic links) đến các tệp trong sites-available/ đã được kích hoạt.

Ví dụ, để cấu hình một trang web, bạn có thể tạo một tệp cấu hình mới trong sites-available/:
```bash
sudo nano /etc/apache2/sites-available/mywebsite.conf
```
Trong đó :
```bash
<VirtualHost *:80>
    ServerAdmin webmaster@mywebsite.com
    ServerName mywebsite.com
    ServerAlias www.mywebsite.com
    DocumentRoot /var/www/mywebsite
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
6. Kích hoạt trang web và khởi động lại Apache
```bash
sudo a2ensite mywebsite.conf
sudo systemctl restart apache2
```
7. Tải lên nội dung web
```bash
sudo mkdir /var/www/mywebsite
git clone https://github.com/mana147/busnt_test.git mywebsite
sudo chown -R $USER:$USER /var/www/mywebsite
sudo chmod -R 755 /var/www/mywebsite
```
note : trước đó nhớ cài đặt git


-----------------------------------------------------------------------------------------
III : cài đặt mysql và phpmyadmin

1 cài đặt các gói cần thiết
```bash
sudo apt install php libapache2-mod-php php-mysql
```

2. Cài đặt MySQL Server
PHPMyAdmin cần một cơ sở dữ liệu MySQL để quản lý. Cài đặt MySQL Server bằng lệnh:
```bash
sudo apt install mysql-server
```

3. Cài đặt PHPMyAdmin
Tiếp theo, cài đặt PHPMyAdmin bằng lệnh sau:
```bash
sudo apt install phpmyadmin
```
Trong quá trình cài đặt, bạn sẽ được hỏi một số câu hỏi cấu hình:
* Chọn web server: Chọn apache2 và nhấn Enter.
* Cấu hình cơ sở dữ liệu cho phpmyadmin bằng dbconfig-common: Chọn Yes.
* Thiết lập mật khẩu cho PHPMyAdmin: Bạn sẽ được yêu cầu nhập mật khẩu cho tài khoản phpmyadmin.

4. Kích hoạt PHPMyAdmin
Sau khi cài đặt, bạn cần kích hoạt cấu hình của PHPMyAdmin trong Apache. Nếu tệp cấu hình chưa được liên kết tự động, bạn có thể tạo một liên kết tượng trưng đến tệp cấu hình:
```bash
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
```
Sau đó, kích hoạt cấu hình:
```bash
sudo a2enconf phpmyadmin
```
5. Khởi động lại Apache
Khởi động lại Apache để áp dụng các thay đổi:
```bash
sudo systemctl restart apache2
```
6. Kiểm tra PHPMyAdmin
Bây giờ, bạn có thể truy cập PHPMyAdmin bằng cách mở trình duyệt và truy cập địa chỉ sau:
```
http://your_server_ip_or_domain/phpmyadmin
```

-----------------------------------------------------------------------------------------
IV : cài đặt redis 

1. Cài đặt Redis
```bash
sudo apt update
sudo apt install redis-server
```
2. Cấu hình Redis
Sau khi cài đặt, bạn có thể chỉnh sửa cấu hình của Redis để phù hợp với nhu cầu của bạn. Tệp cấu hình chính của Redis nằm ở /etc/redis/redis.conf.
```bash
sudo nano /etc/redis/redis.conf
```

Tìm dòng supervised no và thay đổi nó thành: ``` supervised systemd ```

Lưu tệp cấu hình và khởi động lại dịch vụ Redis:
```bash
sudo systemctl restart redis-server
```

3. Kiểm tra Redis
Để đảm bảo Redis đang chạy chính xác, bạn có thể sử dụng lệnh sau để kiểm tra trạng thái của nó:
```bash
sudo systemctl status redis-server
```

```bash
redis-cli ping
```

4. Cài đặt PHP Extension cho Redis
Để PHP có thể tương tác với Redis, bạn cần cài đặt extension Redis cho PHP:
```
sudo apt install php-redis
```
Sau khi cài đặt, bạn cần khởi động lại Apache để áp dụng thay đổi:
```
sudo systemctl restart apache2
```

-----------------------------------------------------------------------------------------
V : add project và config

1 : project busnt sử dụng PHP 5.5


-----------------------------------------------------------------------------------------