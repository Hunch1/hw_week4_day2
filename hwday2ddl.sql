CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    email_address VARCHAR,
    phone_number VARCHAR,
    home_address VARCHAR
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    seat_number VARCHAR,
    ticket_price DECIMAL,
    purchase_date DATE,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR,
    movie_genre VARCHAR,
    release_ DATE,
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);


CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    name_item VARCHAR,
    price_item DECIMAL,
    type_item  VARCHAR,
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);