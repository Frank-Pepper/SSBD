# SSBD infrastructure 

## The site is available at: [https://team-3.proj-sum.it.p.lodz.pl](https://team-3.proj-sum.it.p.lodz.pl)
 

## Infrastrucutre Diagram
![infrastrucutre diagram](/assets/infra.png "infrastrucutre diagram")

## Reverse proxy configuration
### $DOMAIN is eviroment variable provided in docker compose
```
{$DOMAIN} {
    log {
        output file /var/log/caddy/access.log
    }

    @backend path /api/*

    handle @backend {
        reverse_proxy backend1:8080 backend2:8080 {
            lb_policy round_robin

            lb_retries 2
            fail_duration 10s

            health_uri /api/actuator/health
            health_interval 5s
            health_timeout 2s
            health_status 2xx
        }
    }

    handle {
        reverse_proxy front:80
    }
}
```
