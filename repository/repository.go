package repository

//contain an interface for the implementation and struct for the data model.

// Repository represent the repositories
type Repository interface {
	Close()
	FindByID(id int) (*UserModel, error)
	Find() ([]*UserModel, error)
	Create(user *UserModel) error
	Update(user *UserModel) error
	Delete(id int) error
}

// UserModel represent the user model
type UserModel struct {
	Id        int
	Firstname string
	Lastname  string
	Age       int
}
