# pdf-chunker

```
podman image build . -t blumareks/pdf-chunker:003

podman machine stop; podman machine start

podman run -d --name="pdfchunker" -v "./incoming:/tmp/incoming" -v "./output:/tmp/output" blumareks/pdf-chunker:003

podman run -d --name=pdfchunker -v /Users/marek/Documents/2023-ibm/eox/eox-pdf-chunker/pdf-chunker/incoming:/tmp/incoming blumareks/pdf-chunker:001

```
