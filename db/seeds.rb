User.create!([
  {email: "rstevenson.gbit@gmail.com", encrypted_password: "$2a$10$qtTPsGTX8ZMP4yDfFITawuocsbVL9BeR5CqUuvnzuasqBRzllb6Du", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 26, current_sign_in_at: "2015-04-27 01:08:12", last_sign_in_at: "2015-04-26 20:57:11", current_sign_in_ip: "50.143.231.1", last_sign_in_ip: "50.173.32.127"},
  {email: "jill_m_stevenson@yahoo.com", encrypted_password: "$2a$10$NMJ2KiaAJobKIGNDeAFkM.0BH1w2V7spTdDGXcKse1G9onF1LRz0u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-04-26 15:39:58", last_sign_in_at: "2015-04-26 15:39:33", current_sign_in_ip: "67.159.155.19", last_sign_in_ip: "50.173.32.127"}
])
Comment.create!([
  {comment: "hello", event_id: nil},
  {comment: "hello", event_id: nil},
  {comment: "hey", event_id: nil},
  {comment: "hello", event_id: 1},
  {comment: "whats up", event_id: 1},
  {comment: "whats up", event_id: 1},
  {comment: "blah blah blah working on this!", event_id: 1}
])
Event.create!([
  {name: "Spring Yacht Party ", date: "April 5th 2015", location: "Yacht Club", description: "Event is our yearly event where we host great music and food", upcoming: nil},
  {name: "rawr", date: "the date", location: "the location", description: "whatever", upcoming: nil},
  {name: "hey", date: "girl", location: "whats", description: "up", upcoming: nil},
  {name: "First Annual VWYC Rave Party", date: "2015-02-07", location: "Village West Yacht Club - Stockton California", description: "DJ.ILL and DJ-L lit it up at VWYC at the First Annual Rave Party. ", upcoming: false},
  {name: "SJDPS Holiday Party", date: "2014-12-14", location: "Elks Club - Stockton California", description: "Had a great time hosting the annual SJDPS Holiday Party.  The Ikettes even made a guest appearance!", upcoming: false},
  {name: "VWYC Octoberfest", date: "2014-10-08", location: "Village West Yacht Club - Stockton California", description: "Had a great night of singing and dancing with my VWYC fans and the Barbary Coast Yacht Club!!", upcoming: false},
  {name: "Cinco De Mayo Party", date: "2015-05-01", location: "Discovery Bay Yacht Club - Discovery Bay California", description: "DJ.Ill will be playing your favorite music and karaoke Friday night before the big Cinco De Mayo Party", upcoming: true},
  {name: "Memorial Day Party at the SJDPS Island", date: "2015-05-23", location: "SJDPS Island - On Ward Island on the Delta", description: "You won't want to miss the Memorial Day Party at SJDPS Island.  DJ.Ill will be playing Friday, Saturday and Sunday night.  See you there!", upcoming: true},
  {name: "Mandeville Raft Up", date: "2015-07-04", location: "Mandeville Island on the Delta", description: "Join DJ.ILL, VWYC and Sacramento Yacht Club for a raft up party for 4th of July ", upcoming: true},
  {name: "DJ.ILL Hosts GAB on the Delta", date: "2015-08-07", location: "Village West Yacht Club - Stockton California", description: "DJ.ILL will host Girls and Books at VWYC - This is guaranteed to be a fun time so you don't want to miss it!!", upcoming: true},
  {name: "Mildred Raft Up", date: "2014-07-31", location: "Mildred Island - On the Delta", description: "Join DJ.ILL and VWYC for a fun weekend of Music and Karaoke at Mildred Island.  This will be one of the best events of the season so don't miss it!!", upcoming: true}
])
Image.create!([
  {user_id: nil, private: false, filename: "e977b54eb8.jpg", event_id: 1},
  {user_id: nil, private: false, filename: "bafb8b9bb4.jpg", event_id: 1},
  {user_id: nil, private: false, filename: "9f1f90c80a.jpg", event_id: 1},
  {user_id: nil, private: false, filename: "589af08999.jpg", event_id: 12},
  {user_id: nil, private: false, filename: "dd7d31f480.jpg", event_id: 12},
  {user_id: nil, private: false, filename: "567f7e5480.jpg", event_id: 16},
  {user_id: nil, private: false, filename: "52c62c35b8.jpg", event_id: 16},
  {user_id: nil, private: false, filename: "3a1e536569.jpg", event_id: 16},
  {user_id: nil, private: false, filename: "43da0aa16b.jpg", event_id: 17},
  {user_id: nil, private: false, filename: "16c2f83834.jpg", event_id: 17},
  {user_id: nil, private: false, filename: "760b2c84ac.jpg", event_id: 18},
  {user_id: nil, private: false, filename: "baba02d774.jpg", event_id: 18},
  {user_id: nil, private: false, filename: "be823a100e.jpg", event_id: 19},
  {user_id: nil, private: false, filename: "18ab743a81.jpg", event_id: 19},
  {user_id: nil, private: false, filename: "2d0e896351.jpg", event_id: 19},
  {user_id: nil, private: false, filename: "974fd394f6.jpg", event_id: 20},
  {user_id: nil, private: false, filename: "2fe8830299.jpg", event_id: 20},
  {user_id: nil, private: false, filename: "afcbad10c7.jpg", event_id: 20}
])
Video.create!([
  {link: "https://www.youtube.com/watch?v=qpWlaOeGZ_4", uid: "qpWlaOeGZ_4", title: "Bootstrap 3 Tutorials - #2 - Responsive Collapsing Navbar [1080p]", author: "Coder's Guide", duration: "00:11:01", likes: 1517, dislikes: 33, event_id: 1},
  {link: "https://youtu.be/979Kupd65qA", uid: "979Kupd65qA", title: "", author: "", duration: "00:00:00", likes: 0, dislikes: 0, event_id: 12},
  {link: "https://youtu.be/qVs1nGQMFJw", uid: "qVs1nGQMFJw", title: "VWYC RAVE V2 GOPRO", author: "Jill Stevenson", duration: "00:04:03", likes: 2, dislikes: 0, event_id: 12},
  {link: "https://youtu.be/p2B4RGAFEiI", uid: "p2B4RGAFEiI", title: "sjdps signs 2014", author: "Jill Stevenson", duration: "00:03:29", likes: 1, dislikes: 0, event_id: 14},
  {link: "https://youtu.be/J0S8Q5pMsmw", uid: "J0S8Q5pMsmw", title: "VWYC Octoberfest 2014", author: "Jill Stevenson", duration: "00:04:18", likes: 1, dislikes: 0, event_id: 15},
  {link: "https://youtu.be/9O2C0dWZs-8", uid: "9O2C0dWZs-8", title: "Delta 4th of July party", author: "Jill Stevenson", duration: "00:04:25", likes: 1, dislikes: 0, event_id: 18}
])
