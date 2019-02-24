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

# docker 사용
```
docker run -d -p 3000:8080 tomcat
docker rm prune - Remove all stopped containers
docker rm - Remove one or more containers
```


When it run in Docker container, it is better to provide configuration via
`APPLICATION_CONFIG` environment variables rather than copying
`application.yml` into the Docker image. You can convert the
`application.yml` file to json and put it in the `APPLICATION_CONFIG`
environment variable:

```sh
$ export APPLICATION_CONFIG=$(node src/bin/yaml-to-json.js application.yml)

## heroku usage example:
$ heroku config:set APPLICATION_CONFIG=$APPLICATION_CONFIG
$ heroku config:get APPLICATION_CONFIG
```

## Markdown rules

```markdown
[videoUrl]: http://127.0.0.1:8082/example-video-01.mp4
[thumbnailUrl]: http://127.0.0.1:8082/example-image-01.webp
[tags]: windows,linux
[prev]: ./previousMarkdownContent.md
[next]: ./nextMarkdownContent.md
[duration]: 2:30
[author]: alfreduc
[createTime]: Jan-30-2014-12:02:00-GMT+0900
[updateTime]: null

# Title

[![video][thumbnailUrl]][videoUrl]

Freely write video descriptions, related link information, and text content
as Markdown format
```

`[![video][thumbnailUrl]][videoUrl]` is part to be rendered to the video player
part. Without this part, the video player will not appear.

## Properties

| property     | isRequired | description                        |
|----------    |----------- |----------------------------------- |
| videoUrl     |   required | video url                          |
| thumbnailUrl |   optional | thumbnail of video                 |
| tags         |   optional | `,` seperated tag                  |
| prev         |   optional | Specify the previous relevant file |
| next         |   optional | Specify the next relevant file     |
| duration     |   optional | video content's duration time      |
| author       |   optional | uploader                           |
| createTime   |   optional | upload date                        |
| updateTime   |   optional | last update date                   |

# Development

## Install dependencies and Run development server

```sh
$ yarn
$ yarn dev
```

### Run nginx server for test data
If you want to use the [example git repository][smtv_example] as
`SMTV_CLONE_REPO_URL`, you can use nginx web server contains example videos,
images using pre built docker image.

```sh
$ docker run --rm -d -p8082:80 alucio/show-me-the-video-example
```

## Font
- https://google-webfonts-helper.herokuapp.com

## heroku deploy using container

push:
```sh
$ heroku container:push web --arg SMTV_VERSION=$(git describe)

## Or you can use existing docker image. ex) alucio/show-me-the-video:<tagname>
$ docker tag <image> registry.heroku.com/<app>/web
$ docker push registry.heroku.com/<app>/web
```

`<app>` is your heroku app name. You can create it by `heroku create`.

run:
```sh
$ export APPLICATION_CONFIG=$(node src/bin/yaml-to-json.js application.yml)
$ heroku config:set APPLICATION_CONFIG=$APPLICATION_CONFIG
$ heroku config:get APPLICATION_CONFIG

$ heroku container:release web
$ heroku open
```

## Contributing
All pull requests are welcome.

1. Fork this repository (https://github.com/aluc-io/show-me-the-video)
1. Create your new branch. branch naming rule:
    - feat/my-new-feature
    - fix/some-bug
    - docs/fix-typo
1. Install denpendendies and run development server
1. Write your code and commit your changes
1. Push to your fork
1. Create a new Pull Request to master branch of this repository

## License
Released under The MIT License.

[smtv_example]: https://github.com/aluc-io/show-me-the-video-example
[nextjs_ts]: https://github.com/zeit/next.js/tree/master/examples/custom-server-typescript
[dockerurl]: https://hub.docker.com/r/alucio/show-me-the-video
[heroku]: https://show-me-the-video.herokuapp.com/
