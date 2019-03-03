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
디렉토리 하나 생성 후 clone 받고 README.md 참고하여 execute 한다.
error 발생시 mac preference>sharing>원격로그인 활성화 할 것

https://github.com/b6pzeusbc54tvhw5jgpyw8pwz2x6gs/ansible-for-macos  


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

# mongo DB 사용
```
docker run --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example -d -p27017:27017 mongo
docker exec -it gifted_shtern /bin/bash(/bin/sh)
mongo -u root -p example
show dbs;
```
docker hub mongo <<  이런식으로 google 검색하면 docker hub 에서 사용법까지 다 나와있으므로 참고할 것!


## License
Released under The MIT License.

[smtv_example]: https://github.com/aluc-io/show-me-the-video-example
[nextjs_ts]: https://github.com/zeit/next.js/tree/master/examples/custom-server-typescript
[dockerurl]: https://hub.docker.com/r/alucio/show-me-the-video
[heroku]: https://show-me-the-video.herokuapp.com/
