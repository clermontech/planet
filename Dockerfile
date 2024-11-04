FROM hugomods/hugo AS build

COPY . .
RUN hugo

FROM nginx:1.27.2 AS run
RUN rm -rf /usr/share/nginx/html
COPY --from=build /src/public/ /usr/share/nginx/html