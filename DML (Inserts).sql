
-- Primary Inserts

INSERT INTO admin (admin_id, pwd)
VALUES
    ('1','gsjddh'),
    ('2','rrrrllllkkkk'),
    ('3','ygygduayg'),
    ('4','weguyg'),
    ('5','jzdgeu'),
    ('6','goodfriend'),
    ('7','gooddvfriend'),
    ('8','goodfriesdvsdvnd');

INSERT INTO customer (cust_id,cust_name,pwd,email_id)
VALUES
    ('1','havish','iamnice','good@gmail.com'),
    ('2','lakshmi', 'gsjddh','a@gmail.com'),
    ('3','fefse','rrrrllllkkkk','b@gmail.com'),
    ('4','drake','ygygduayg','c@gmail.com'),
    ('5','billie','weguyg','d@gmial.com'),
    ('6','salena','jzdgeu','e@gmail.com'),
    ('7','gomez','goodfriend','f@gmail.com'),
    ('8','eilish','gooddvfriend','g@gmail.com'),
    ('9','bitny','goodfriesdvsdvnd','gbitny@gmail.com'),
    ('10','bobby','hofstader','h@gmail.com');

    INSERT INTO seats (seat_id, seat_name, booked)
VALUES
    ('1','A1',true),
    ('2','B1',true),
    ('3','C1',true),
    ('4','D1',false),
    ('5','E1',false),
    ('6','F1',false),
    ('7','G1',false),
    ('8','H1',true);

INSERT INTO movie (movie_id, movie_name, release_date)
VALUES
    ('1','Shawshank Redemption', '2013-05-17'),
    ('2','King Kong', '2013-06-16'),
    ('3','Transformers', '2016-01-08'),
    ('4','Batman Beings', '2017-07-08'),
    ('5','Limitless', '2017-12-29'),
    ('6','Django Unchained', '2018-02-09'),
    ('7','Hateful 8', '2019-08-10'),
    ('8','Dune', '2021-12-19');

INSERT INTO screening (screening_id, start_time, end_time)
VALUES
    ('1','2016-08-15 14:38:59', '2016-08-15 16:38:59'),
    ('2','2013-04-03 10:48:33', '2013-04-03 10:48:33'),
    ('3','2010-06-12 07:59:53', '2010-06-12 07:59:53'),
    ('4','2017-08-27 09:55:41', '2017-08-27 09:55:41'),
    ('5','2021-02-10 02:53:06', '2021-02-10 02:53:06'),
    ('6','2013-11-18 23:23:55', '2013-11-18 23:23:55'),
    ('7','2019-12-05 10:31:20', '2019-12-05 10:31:20'),
    ('8','2019-01-19 23:11:29', '2019-01-19 23:11:29');

    INSERT INTO offers (offer_id,movie)
VALUES
    ('1','Shawshank Redemption'),
    ('2','Joker'),
    ('3','Fargo'),
    ('4','Magic Mike'),
    ('5','Skyfall'),
    ('6','Godzilla'),
    ('7','Attack on Titan'),
    ('8','Your Name');

    INSERT INTO tickets (ticket_id, price,seat_id,admin_id,offer_id)
VALUES
    ('1','199','1','1','1'),
    ('2','400','2','2','2'),
    ('3','600','3','3','3'),
    ('4','200','4','4','4'),
    ('5','100','5','5','5'),
    ('6','400','6','6','6'),
    ('7','500','7','7','7'),
    ('8','450','8','8','8');

    INSERT INTO theatre (theatre_id,theatre_name,theatre_loc,capacity,admin_id)
VALUES
    ('1','harika','hyderabad','13','1'),
    ('2','otis','canada','400','2'),
    ('3','meave','china','567','3'),
    ('4','ola','nagaland','1239','4'),
    ('5','eleven','indiana','500','5'),
    ('6','Millie Bobby Brown','UnitedStates','800','6'),
    ('7','dheeraj','UttarPradesh','245','7'),
    ('8','max','spain','434324','8');

-- Lookups

    INSERT INTO booking (cust_id,ticket_id,b_id)
VALUES
    ('1','1','1'),
    ('2','2','2'),
    ('3','3','3'),
    ('4','4','4'),
    ('5','5','5'),
    ('6','6','6'),
    ('7','7','7'),
    ('8','8','8');

    INSERT INTO ticket_theatre_lookup (ticket_id,theatre_id)
VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8');

INSERT INTO ticket_screening_lookup (ticket_id,screening_id)
VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8');

INSERT INTO theatre_seat_lookup (theatre_id,seat_id)
VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8');

    INSERT INTO screening_movie_lookup (movie_id,screening_id)
VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8');

-- Multi Valued Attributes

    INSERT INTO phone_no (phone_num  ,cust_id)
VALUES
    ('1234567890','1'),
    ('3254653423','2'),
    ('1298097645','3'),
    ('2354342354','4'),
    ('1254553377','5'),
    ('1254236572','6'),
    ('1233221144','7'),
    ('1122667744','8'),
    ('2222667755','9'),
    ('3322667733','10');


INSERT INTO discounts (d_id, discount)
 VALUES
   ('1', '42'),
   ('2', '56'),
   ('3', '45'),
   ('4', '74'),
   ('5', '24'),
   ('6', '54'),
   ('7', '12'),
   ('8', '35');


 INSERT INTO M_Language (M_Lang, movie_id)
 VALUES
     ('english','1'),
     ('english','2'),
     ('english','3'),
     ('english','4'),
     ('english','5'),
     ('english','6'),
     ('english','7'),
     ('english','8');

INSERT INTO actors (A_name, movie_id)
VALUES
    ('a','1'),
    ('b','2'),
    ('c','3'),
    ('d','4'),
    ('e','5'),
    ('f','6'),
    ('g','7'),
    ('h','8');

INSERT INTO directors (D_name, movie_id)
VALUES
    ('kadf','1'),
    ('wdkhnsd','2'),
    ('adknsa','3'),
    ('malendez','4'),
    ('murphy','5'),
    ('glassman','6'),
    ('claire','7'),
    ('morgan','8');
    