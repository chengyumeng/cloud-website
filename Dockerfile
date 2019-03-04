FROM 360cloud/hugo:0.54.0 as build

COPY . /src

RUN ["hugo"]


FROM nginx:1.15.2

COPY --from=build /src/public/ /usr/share/nginx/html/
