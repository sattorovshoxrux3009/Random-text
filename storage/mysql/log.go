package mysql

import (
	"context"
	"database/sql"
	"time"

	"github.com/sattorovshoxrux3009/Random-text/storage/repo"
)

type logRepo struct {
	db *sql.DB
}

func NewLogStorage(db *sql.DB) repo.LogStorageI {
	return &logRepo{
		db: db,
	}
}
func (t *logRepo) Create(ctx context.Context, req *repo.Log) (*repo.Log, error) {
	query := `
		INSERT INTO logs (
			text_id,
			button
		)VALUES (?, ?)
	`
	_, err := t.db.Exec(query, req.Text_id, req.Button)
	if err != nil {
		return nil, err
	}
	// Agar req.CreateAt bo'sh bo'lsa, hozirgi vaqtni avtomatik ravishda olish
	if req.Time.IsZero() {
		req.Time = time.Now()
	}

	return req, nil
}
