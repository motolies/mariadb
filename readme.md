# knw1234/mariadb ([dockerhub](https://hub.docker.com/r/knw1234/mariadb))

내 마음대로 수정한 mariadb


## Usage

``` 
# 빌드
docker build -t knw1234/mariadb:base .

# 빌드 후 테스트(--restart=unless-stopped 재부팅시도 다시 시작)
docker run -d --restart=unless-stopped -p 13306:3306 -e MYSQL_ROOT_PASSWORD=root --name mydb knw1234/mariadb:base

# 이미지 푸쉬
docker push knw1234/mariadb:latest
docker push knw1234/mariadb:{특정버전}




# 이거 말고 위에껄로 해보자 
# 태그 변경 후 푸쉬
docker tag knw1234/mariadb:base knw1234/mariadb:{특정버전}
docker push knw1234/mariadb:{특정버전}

# 태그 변경 후 푸쉬(latest)
docker tag knw1234/mariadb:base knw1234/mariadb:latest
docker push knw1234/mariadb:latest

```