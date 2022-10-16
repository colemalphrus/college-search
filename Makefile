build-push:
	docker build . -t colemalphrus/college-search --platform=linux/amd64
	docker push docker.io/colemalphrus/college-search:latest


deploy-fresh:
	helm uninstall college-search
	helm install college-search ./HelmCharts --set image.tag=latest

deploy-init:
	helm install college-search ./HelmCharts --set image.tag=latest


run:
	npm run build
	docker compose up