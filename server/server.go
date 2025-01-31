package server

import (
	"context"
	"fmt"
	"log"
	"math/rand"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/sattorovshoxrux3009/Random-text/storage"
	"github.com/sattorovshoxrux3009/Random-text/storage/repo"
)

type Options struct {
	Strg storage.StorageI
}

func NewServer(opts *Options) *gin.Engine {
	router := gin.New()
	router.SetTrustedProxies(nil)
	router.POST("/api/button", func(c *gin.Context) {
		var request struct {
			Button int `json:"button"`
		}

		if err := c.BindJSON(&request); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid request body"})
			return
		}
		if request.Button == 12 {
			// 1-100 oralig'ida random ID tanlash
			randomID := rand.Intn(100) + 1

			// Text DB dan text olish
			textGet, err := opts.Strg.Text().Get(context.TODO(), randomID)
			if err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{"error": "Error getting text"})
				return
			}

			// Logs DB ga yozish
			_, err = opts.Strg.Log().Create(context.TODO(), &repo.Log{
				Text_id: randomID,
				Button:  12,
			})
			if err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{"error": "Error logging request"})
				log.Fatal("Err: ", err)
				return
			}
			c.JSON(http.StatusOK, gin.H{"text": textGet})
			return
		}
		if request.Button == 13 {
			_, err := opts.Strg.Log().Create(context.TODO(), &repo.Log{
				Button: 13,
			})
			if err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{"error": "Internal server error"})
				fmt.Println(err)
				return
			}
			c.String(http.StatusOK, "Successful")
			return
		}
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid button value"})
	})

	return router
}
