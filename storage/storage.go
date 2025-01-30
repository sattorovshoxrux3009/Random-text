package storage

import (
	"database/sql"

	"github.com/sattorovshoxrux3009/Random-text/storage/mysql"
	"github.com/sattorovshoxrux3009/Random-text/storage/repo"
)

type StorageI interface {
	Text() repo.TextStorageI
	Log() repo.LogStorageI
}
type storagePg struct {
	textRepo repo.TextStorageI
	logRepo  repo.LogStorageI
}

func NewStorage(mysqlConn *sql.DB) StorageI {
	return &storagePg{
		textRepo: mysql.NewTextStorage(mysqlConn),
		logRepo:  mysql.NewLogStorage(mysqlConn),
	}
}
func (s *storagePg) Text() repo.TextStorageI {
	return s.textRepo
}
func (s *storagePg) Log() repo.LogStorageI {
	return s.logRepo
}
