# Portainer Local Infra

This repository contains a collection of Docker Compose files that create a local infrastructure for Portainer. The infrastructure includes three stacks: Minio, MSSQL, and Postgres.

## Portainer

This repository also includes a `docker-compose.yml` file that creates a Portainer service. To start the Portainer service, run the following command in the root directory of this repository:

```sh
docker-compose --env-file .env up -d
```

This will start the Portainer service and expose it on port 9000. You can access the Portainer web interface by navigating to `http://localhost:9000` in your web browser.

Note that before starting the Portainer service, you need to start at least one of the Minio, MSSQL, or Postgres stacks, because Portainer requires a running Docker engine to manage.

### `launch-portainer.sh`

This repository also includes a `launch-portainer.sh` script that automates the process of launching the Portainer service. The script checks if the Docker daemon is running before starting the service.

To run the `launch-portainer.sh` script, navigate to the root directory of this repository and run the following command:

```sh
./launch-portainer.sh
```

This will start the Portainer service and expose it on port 9000.

## Stacks

### Minio

The Minio stack provides an S3-compatible object storage service. It includes a single Minio instance with persistent storage.

To start the Minio stack, run the following command in the root directory of this repository:

```sh
docker-compose -f stacks/minio/docker-compose.yml --env-file .env up -d
```

### MSSQL

The MSSQL stack provides a Microsoft SQL Server instance. It includes a single MSSQL instance with persistent storage.

To start the MSSQL stack, run the following command in the root directory of this repository:

```sh
docker-compose -f stacks/mssql/docker-compose.yml --env-file .env up -d
```

### Postgres

The Postgres stack provides a PostgreSQL instance. It includes a single Postgres instance with persistent storage.

To start the Postgres stack, run the following command in the root directory of this repository:

```sh
docker-compose -f stacks/postgres/docker-compose.yml --env-file .env up -d
```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

#### References:

- [Minio Documentation](https://docs.min.io/)
- [Microsoft SQL Server Docker Image](https://hub.docker.com/_/microsoft-mssql-server)
- [PostgreSQL Docker Image](https://hub.docker.com/_/postgres)
- [Portainer Documentation](https://documentation.portainer.io/)
