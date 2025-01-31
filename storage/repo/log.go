package repo

import (
	"context"
	"time"
)

type LogStorageI interface {
	Create(ctx context.Context, text *Log) (*Log, error)
}
type Log struct {
	ID      int
	Text_id int
	Button  int
	Time    time.Time
}
