package mysql

import (
	"context"
	"database/sql"

	"github.com/sattorovshoxrux3009/Random-text/storage/repo"
)

type textRepo struct {
	db *sql.DB
}

func NewTextStorage(db *sql.DB) repo.TextStorageI {
	return &textRepo{
		db: db,
	}
}
func (t *textRepo) Get(ctx context.Context, id int) (*repo.Text, error) {
	query := `
		SELECT 
			id,
			text
		FROM texts WHERE id=?
	`
	var text repo.Text
	err := t.db.QueryRow(query, id).Scan(
		&text.ID,
		&text.Text,
	)
	if err != nil {
		return nil, err
	}

	return &text, nil
}
