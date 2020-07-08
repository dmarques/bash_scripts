# Script for generate the Go file structure API
# version 1.0

echo "Generating Go Structure files..."

#Create the main.go file
if [ ! -f main.go ]; then
    echo -e "package main\n\nimport (\n\t\"github.com/gin-gonic/gin\"\n)\n\nvar (\n\tRouter = gin.Default()\n)\n\nfunc init() {\n\n}\n\nfunc main() {\n\tRouter.Run(\":8080\")\n}" > main.go
fi

#Create the main.go file
if [ ! -d config ]; 
then	
	mkdir config
    echo -e "package config \n\nfunc init(){\n\n}\n" > config/config.go
else
	cd config
    if [ ! -f config.go ]; then
    	echo -e "package config \n\nfunc init(){\n\n}\n" > config.go
    fi
    cd ..
fi

#Create the handlers folder and handler.go file
if [ ! -d handlers ]; 
then	
	mkdir handlers
    echo -e "package handlers \n\nfunc init(){\n\n}\n" > handlers/handler.go
else
	cd handlers
    if [ ! -f handler.go ]; then
    	echo -e "package handlers \n\nfunc init(){\n\n}\n" > handler.go
    fi
    cd ..
fi

#Create the services folder and service.go file
if [ ! -d services ]; 
then	
	mkdir services
    echo -e "package services \n\nfunc init(){\n\n}\n" > services/service.go
else
	cd services
    if [ ! -f service.go ]; then
    	echo -e "package services \n\nfunc init(){\n\n}\n" > ping.go
    fi
    cd ..
fi

#Create the routers folder and router.go file
if [ ! -d routers ]; 
then	
	mkdir routers
    echo -e "package routers\n\nimport (\n\t\"net/http\"\n\n\t\"github.com/gin-gonic/gin\"\n)\n\nfunc SetAllRouters(router *gin.Engine) {\n\tSetPingRouter(router)\n}\n\nfunc SetPingRouter(router *gin.Engine) {\n\trouter.GET(\"/ping\", func(c *gin.Context) {\n\t\tc.String(http.StatusOK, \"pong\")\n\t})\n}" > routers/router.go
else
	cd routers
    if [ ! -f router.go ]; then
    	echo -e "package routers\n\nimport (\n\t\"net/http\"\n\n\t\"github.com/gin-gonic/gin\"\n)\n\nfunc SetAllRouters(router *gin.Engine) {\n\tSetPingRouter(router)\n}\n\nfunc SetPingRouter(router *gin.Engine) {\n\trouter.GET(\"/ping\", func(c *gin.Context) {\n\t\tc.String(http.StatusOK, \"pong\")\n\t})\n}" > router.go
    fi
    cd ..
fi

#Create the domains folder and domain.go file
if [ ! -d domains ]; 
then	
	mkdir domains
    echo -e "package domains\n" > domains/domain.go
else
	cd domains
    if [ ! -f domain.go ]; then
    	echo -e "package domains\n" > domain.go
    fi
    cd ..
fi

#Create the test folder
if [ ! -d test ]; 
then	
	mkdir test
fi


