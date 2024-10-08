To configure the database, postgres's default environment variables
must be set.

Add them in a file called ".env".

```
DB_NAME=
DB_USER=
DB_PASSWORD=
```

In order to fully erase database's contents (stored by default in ./database/data) just run `make purgedb`

<!--

- [ ] Solve database data directory (./data/pgdata) permissions.
The postgres startup script sets them (chown) to a user postgres that only exists inside the container and does not map with the host system.

To delete the 'data' directory where the database is stored use `sudo` or, in case of not having the required permissions, remove it from inside a container where permissions properly map to those of the 'data' directory.

Must be ran from the root of the repository.

```
docker run --tty --rm --mount type=bind,src=./docker/database,dst=/ft postgres:alpine ash -c "rm -vr /ft/data"
```

-->
