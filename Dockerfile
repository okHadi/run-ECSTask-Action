FROM loadimpact/k6
ENV SCRIPT test.js
COPY . /test
WORKDIR /test
ENTRYPOINT []
CMD ["sh", "-c", "k6 run $SCRIPT"]