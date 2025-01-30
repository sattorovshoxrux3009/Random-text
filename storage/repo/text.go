package repo

import "context"

type TextStorageI interface {
	Get(ctx context.Context,id int) (*Text, error)
}
type Text struct {
	ID   int
	Text string
}
