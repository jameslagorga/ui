.PHONY: deploy

deploy:
	@echo "Finding Nginx pod..."
	@POD_NAME=$$(kubectl get pods -l app=nginx -o jsonpath='{.items[0].metadata.name}'); \
	echo "Copying ui directory to $$POD_NAME:/usr/share/nginx/html/"; \
	kubectl cp ./ $$POD_NAME:/usr/share/nginx/html/ui
