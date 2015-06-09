# Docker compose sample project

 - Host
   - MacOS
   - Homebrew
   - Docker 1.6.2
   - Boot2Docker 1.6.2
 - Container
   - Ruby 2.2
     - Sinatra

## Install docker compose on MacOS

```
brew install boot2docker
brew install docker-compose
boot2docker init
boot2docker up
$(boot2docker shellinit)
```

## Rebuild

```
docker-compose build web
```

## Docker run

```
docker-compose up
```

`boot2docker shellinit`を実行したときの
ホストにポートを3000を指定することでwebサーバが起動できるのが確認できます.
さらに`shotgun`を利用しているため、`app.rb`をローカルで編集しても
リロードすると反映していることがわかると思います.

## Web Container

### Connect db

```
docker-compose run web mysql -uroot -ppassword -h db app_development
```

## TODO

どうやってbundlerを更新するか.
docker-composeにコミットオプションが追加されれば、これが使えるかもな.

 - [Add commit to run command #1178](https://github.com/docker/compose/pull/1178)

