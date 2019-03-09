# hellpapp

<!--
[![Docker Automated](https://img.shields.io/docker/automated/alucio/show-me-the-video-example.svg)][dockerurl]
[![Docker Build](https://img.shields.io/docker/build/alucio/show-me-the-video-example.svg)][dockerurl]
-->
[![Docker Pulls](https://img.shields.io/docker/pulls/alucio/show-me-the-video.svg)][dockerurl]
[![Docker Layers](https://img.shields.io/microbadger/layers/alucio/show-me-the-video.svg)][dockerurl]
[![Docker Size](https://img.shields.io/microbadger/image-size/alucio/show-me-the-video.svg)][dockerurl]
[![Heroku deploy](https://heroku-badge.herokuapp.com/?app=show-me-the-video&style=flat&svg=1)][heroku]

hellpapp is the project for tuturing.


# Usage

#ansible

1. 디렉토리 하나 생성 후 clone 받고 README.md 참고하여 execute 한다.
2. error 발생시 mac preference>sharing>원격로그인 활성화 할 것
3. iterm2  command+, 설정->profile->command '/bin/zsh' 로 변경

https://github.com/b6pzeusbc54tvhw5jgpyw8pwz2x6gs/ansible-for-macos  
```
which node
node --version
nvm use 10(version)
```

# Install next, react, react-dom

package.json 파일에 dependencies 정보를 저장함
```
yarn -init -y
yarn add next react react-dom
```


#Add a script to package.json file
```
{
  "scripts": {
    "dev": "next",
    "build": "next build",
    "start": "next start"
  }
}
```

# 실행
```
yarn dev
```
yarn dev 실행 후  localhost:3000 열어보면  pages/index.js  가 열리는 것을 볼 수 있다.
>> next.js 를 통해 만들어진 서버에 대한 파일은 어디에 있으며 포트를 바꾸려면??

# docker 사용
```
docker run -d -p 3000:8080 tomcat
docker rm prune - Remove all stopped containers
docker rm - Remove one or more containers
```

# docker build
1. Dockerfile 생성
2. build 실행 (image 생성)
```
docker build -t mytest:v2 .
```

3. 생성된 image 실행
- Dockerfile 에서 expose 3000 했기 때문에  3000번 끼리 mapping 하였음.
```
docker run -d -p 3000:3000 mytest:v2
```

3. image push
```
docker login
docker tag mytest:v2 duke8612/carpoola:t1
docker push duke8612/carpoola:t1
```

ctop : container 

# mongo DB 사용
```
docker run --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example -d -p27017:27017 mongo
docker exec -it gifted_shtern /bin/bash(/bin/sh)
mongo -u root -p example
show dbs;
```
docker hub mongo <<  이런식으로 google 검색하면 docker hub 에서 사용법까지 다 나와있으므로 참고할 것!

# mongo-express
```
ocker run --link eager_jennings:mongo -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=root -e ME_CONFIG_MONGODB_ADMINPASSWORD=example mongo-express
```
localhost:8081 접속하면 GUI mongodb 를 사용할 수 있다.

# docker-compose
docker-compose 로 여러 컨테이너를 띄울 수 있다.

```
 Use root/example as user/password credentials
  1 version: '3.1'
  2
  3 services:
  4
  5   mongo:
  6     image: mongo
  7     restart: always
  8     ports:
  9       - 27017:27017
 10     environment:
 11       MONGO_INITDB_ROOT_USERNAME: root
 12       MONGO_INITDB_ROOT_PASSWORD: example
 13
 14   mongo-express:
 15     image: mongo-express
 16     restart: always
 17     ports:
 18       - 8081:8081
 19     environment:
 20       ME_CONFIG_MONGODB_ADMINUSERNAME: root
 21       ME_CONFIG_MONGODB_ADMINPASSWORD: example
 ```
```
docker-compose up -d
docker-compose ps
docker-compose logs -f 서비스명(ex mongo)
docker-compose exec mongo /bin/bash
```

json 형태로 볼때 쓰는건가,,?
npx 붙이면 node_modules 안 bin 에서 명령 찾아줌?
```
yarn add js-yaml
npx js-yaml docker-compose.yml
```

# express.js

```
mkdir test-express
cd test-express
yarn init
yarn add express
yarn add mongoose
yarn add faker
yarn add body-parser
yarn add morgan
```
test code:
curl -H "content-type: application-json" -X POST localhost:9090/user -d '{"name":"jinho","email":"aaa@test.com"}'

# nodemon
```
yarn add nodemon --dev
yarn install
npx nodemon ./server.js
```

dev dependencies 를 제외한 prod 만 설치하고 싶을 때는
export NODE_ENV=production
env | rg NODE
yarn install
unset NODE_ENV (if you need)


## License
Released under The MIT License.

[smtv_example]: https://github.com/aluc-io/show-me-the-video-example
[nextjs_ts]: https://github.com/zeit/next.js/tree/master/examples/custom-server-typescript
[dockerurl]: https://hub.docker.com/r/alucio/show-me-the-video
[heroku]: https://show-me-the-video.herokuapp.com/
