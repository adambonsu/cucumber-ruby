# Cucumber Ruby Image

## Usage

### Build image
```
docker build -t cucumber-ruby .
```

### Push image to docker hub
```
docker login
docker tag cucumber-ruby adambonsu/cucumber-ruby
docker push adambonsu/cucumber-ruby
```

### Run Cucumber using pwd as the root directory
```
docker run -v `pwd`:/cucumber adambonsu/cucumber-ruby
```
or run specific feature(s)
```
docker run -v `pwd`:/cucumber adambonsu/cucumber-ruby path/to/feature
```
