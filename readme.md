***
    run from container:
***

```
    docker image build . -f Dockerfile -t graphene-django_app:1.0
    docker container run --rm --name graphene-django -p 8000:8000 graphene-django_app:1.0
```