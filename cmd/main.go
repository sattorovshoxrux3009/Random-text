package main

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/go-sql-driver/mysql"
	"github.com/sattorovshoxrux3009/Random-text/config"
	"github.com/sattorovshoxrux3009/Random-text/server"
	"github.com/sattorovshoxrux3009/Random-text/storage"
)

func main() {
	cfg := config.Load(".")
	mysqlUrl := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s",
		cfg.Mysql.User,
		cfg.Mysql.Password,
		cfg.Mysql.Host,
		cfg.Mysql.Port,
		cfg.Mysql.Database,
	)
	db, err := sql.Open("mysql", mysqlUrl)
	if err != nil {
		log.Fatal("Bazaga ulanishda xatolik:", err)
	}
	defer db.Close()

	// Ulanishni tekshirish
	err = db.Ping()
	if err != nil {
		log.Fatal("Connection error:", err)
	}

	strg := storage.NewStorage(db)

	router := server.NewServer(&server.Options{
		Strg: strg,
	})
	fmt.Println(cfg.Port)
	if err = router.Run(cfg.Port); err != nil {
		log.Fatal("Error starting server: ", err)
	}

	/*strg := storage.NewStorage(db)
	res, err := strg.Log().Create(context.TODO(), &repo.Log{
		Text_id: 1,
		Button:  13,
	})
	if err != nil {
		log.Fatal("Error creating log", err)
	}
	fmt.Println(res)

	strg := storage.NewStorage(db)
	textGet, err := strg.Text().Get(context.TODO(), 1)
	if err != nil {
		log.Fatal("Error getting text")
	}
	fmt.Println(textGet)*/
}
