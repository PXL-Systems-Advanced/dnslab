$ORIGIN mijnpxl.be.
$TTL    604800
@       IN      SOA     ns.mijnpxl.be. root.mijnpxl.be. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

; Name servers
        IN      NS      ns.mijnpxl.be.

; A records for name servers
ns      IN      A       172.16.238.10  ; IP van de DNS-server container

; A records for hosts
www     IN      A       172.16.238.11  ; IP van de webserver container