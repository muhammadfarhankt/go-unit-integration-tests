package model

import "gorm.io/gorm"

type User struct {
	*gorm.Model
	Name     string `gorm:"not null" json:"name"`
	Email    string `gorm:"not null;unique" json:"email"`
	Password string `gorm:"not null" json:"password"`
}

var M = make(map[string]User)
