use finance_analyzer

-- Create the main users table
CREATE TABLE users (
    u_id INT PRIMARY KEY NOT NULL,
	u_name varchar(255) NOT NULL,
    u_mail VARCHAR(255) NOT NULL CHECK (u_mail LIKE '%@%.%'),
    u_password CHAR(15) NOT NULL
)

CREATE TABLE Categories (
	c_id int primary key not null,
	c_name varchar(50) not null,
	c_description varchar(255) not null,
	u_id INT NOT NULL,
	FOREIGN KEY (u_id) REFERENCES users(u_id),
)

CREATE TABLE Purchases(
	p_id int primary key not null,
	p_date date not null,
	p_description varchar(255) not null,
	p_total_price float not null,
	u_id INT NOT NULL,
    c_id INT NOT NULL,
    FOREIGN KEY (u_id) REFERENCES users(u_id),
    FOREIGN KEY (c_id) REFERENCES Categories(c_id)
)

CREATE TABLE Payments(
	pmnt_id int primary key not null,
	pmnt_cuote_number tinyint not null,
	pmnt_date date,
	u_id INT NOT NULL,
	p_id int not null,
	FOREIGN KEY (u_id) REFERENCES users(u_id),
	FOREIGN KEY (p_id) REFERENCES purchases(p_id),
)