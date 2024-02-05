CREATE TABLE Ivent (
  id INT PRIMARY KEY,
  name_ VARCHAR(255) NOT NULL,
  date_ DATE NOT NULL,
  time_ TIME NOT NULL,
  location_ VARCHAR(255) NOT NULL,
  amount DECIMAL(10, 2),
  free_spots INT,
  available_seats bit not null
);


CREATE TABLE Client (
  id INT PRIMARY KEY,
  name_ VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL
);



CREATE TABLE Ticket (
  id INT PRIMARY KEY,
  event_id INT NOT NULL,
  client_id INT NOT NULL,
  status_ VARCHAR(20) NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (event_id) REFERENCES Ivent (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (client_id) REFERENCES Client (id) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Payment (
  id INT PRIMARY KEY,
  ticket_id INT NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  payment_date DATE NOT NULL,
  FOREIGN KEY (ticket_id) REFERENCES Ticket(id)
);

drop table Ivent
drop table Client
drop table Ticket
drop table Payment