.PHONY: generate_product_service
generate_product_service:
	protoc --go_out=./gen/product_service/pb --go-grpc_out=./gen/product_service/pb --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative product_service.proto


.PHONY: generate_user_service
generate_user_service:
	protoc --go_out=./gen/user_service/pb --go-grpc_out=./gen/user_service/pb --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative user_service.proto

.PHONY: generate_order_service
generate_order_service:
	protoc --go_out=./gen/order_service/pb --go-grpc_out=./gen/order_service/pb --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative order_service.proto

.PHONY: generate_notification_service
generate_notification_service:
	protoc --go_out=./gen/notification_service/pb --go-grpc_out=./gen/notification_service/pb --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative notification_service.proto

.PHONY: generate
generate: generate_product_service generate_user_service generate_order_service generate_notification_service
