# pdf-chunker

```
podman image build . -t blumareks/pdf-chunker:003

podman machine stop; podman machine start

podman run -d --name="pdfchunker" -v "./incoming:/tmp/incoming" -v "./output:/tmp/output" blumareks/pdf-chunker:003

```

## TODO:

- parameters for `file name` and file `page number` per chunk passed to the container
- trigger for starting the process FaaS / Code Engine
- uploading results to a bucket in ICOS