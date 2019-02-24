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


## License
Released under The MIT License.

[smtv_example]: https://github.com/aluc-io/show-me-the-video-example
[nextjs_ts]: https://github.com/zeit/next.js/tree/master/examples/custom-server-typescript
[dockerurl]: https://hub.docker.com/r/alucio/show-me-the-video
[heroku]: https://show-me-the-video.herokuapp.com/
