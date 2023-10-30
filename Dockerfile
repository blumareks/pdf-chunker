FROM ubuntu:22.04

RUN apt-get update && apt-get install -y && \
    apt-get install -y pdftk

# Create and set the working directory
WORKDIR /tmp

# Copy the chunker.sh
COPY ./chunker.sh .

# Copy directories
COPY . .

# change to executable
RUN chmod 755 ./chunker.sh && \
    ls -al 

# chunk the pdf  <script_filename>.sh <filename.pdf> <num_pages_per_output_file>
CMD ["./chunker.sh","tobechunked.pdf","50"]