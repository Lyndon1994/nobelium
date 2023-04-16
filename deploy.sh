export NOTION_PAGE_ID=d52db72a66234de2ba11f51c87a8ab52
export IMAGE=nobelium:latest
export SITE_URL=https://trtr.asia
docker build -t ${IMAGE} --build-arg NOTION_PAGE_ID .
docker kill nobelium
docker rm nobelium
docker run -d --name nobelium --network track -p 3000:3000 -e NOTION_PAGE_ID=${NOTION_PAGE_ID} nobelium:latest
