FROM node

RUN mkdir code
COPY models code/models
COPY index.html code/index.html
WORKDIR code
RUN npm install -g http-server
CMD ["http-server", "."]