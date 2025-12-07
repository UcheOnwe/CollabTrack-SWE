
INSERT INTO Users (username, passcode, legal_first, legal_last, phone_number, about_me, email, age) VALUES
('User1', 'Userpass', 'John', 'Grayson', 1234567891, 'Just your everyday average joe.', 'example1@gmail.com', 20),
('User2', 'Userpass', 'Ash', 'Lopez', 1234567891, 'I collect bottcaps. Im looking for rare ones!', 'example2@gmail.com', 21),
('User3', 'Userpass', 'Cody', 'Banks', 1234567891, 'I love solving hard puzzles....', 'example3@gmail.com', 19),
('User4', 'Userpass', 'Angel', 'Rivera', 1234567891, 'Im a professional boxer.', 'example4@gmail.com', 34),
('User5', 'Userpass', 'Jayson', 'Greeves', 1234567891, 'Uni Student studying BioChem!', 'example5@gmail.com', 42),
('User6', 'Userpass', 'Steve', 'Rivera', 1234567891, 'Interested in fantasy football.', 'example6@gmail.com', 43),
('User7', 'Userpass', 'Trevor', 'Vasquez', 1234567891, 'I collect Pokemon Cards.', 'example7@gmail.com', 62),
('User8', 'Userpass', 'Larry', 'Middleton', 1234567891, 'I love hiking!', 'example8@gmail.com', 23),
('User9', 'Userpass', 'Cody', 'Brandon', 1234567891, 'Ive been interested in reading lately...', 'example9@gmail.com', 28),
('User10', 'Userpass', 'Mary', 'Stevens', 1234567891, 'I like trains!', 'example10@gmail.com', 18);

INSERT INTO User_Tasks (owner_id, task_name, description, importance, urgency, due_date) VALUES
(1, 'Do laundry', 'Laundry.', 2, 2, '2025-12-25'),
(1, 'Engineering Chapter 5 Homework', 'Finish up the last part of the assignment', 1, 2, '2025-12-15'),
(2, 'Schedule doctor appointment', 'Scheudle a doctors appoint for next week', 2, 0, '2025-12-10'),
(0, 'Complete project proposal', 'Draft and submit Q1 project proposal to management', 2, 2, '2025-12-15'),
(3, 'Review code changes', 'Review pull requests for authentication module', 1, 1, '2025-12-08'),
(1, 'Update documentation', 'Add API endpoint documentation for new features', 1, 0, '2025-12-20'),
(5, 'Team meeting prep', 'Prepare slides for weekly team sync', 1, 2, '2025-12-09'),
(10, 'Fix login bug', 'Investigate and resolve session timeout issue', 2, 2, '2025-12-07'),
(7, 'Database backup', 'Schedule automated weekly database backups', 2, 1, '2025-12-13'),
(4, 'Client follow-up', 'Send follow-up email to client about feature request', 1, 1, '2025-12-10'),
(9, 'Update dependencies', 'Upgrade npm packages to latest stable versions', 1, 0, '2025-12-18'),
(6, 'Write unit tests', 'Add test coverage for user authentication flow', 2, 1, '2025-12-16'),
(0, 'Performance optimization', 'Optimize database queries for dashboard page', 1, 0, '2025-12-22'),
(8, 'Security audit', 'Review application for common security vulnerabilities', 2, 1, '2025-12-14'),
(3, 'Onboard new developer', 'Set up dev environment and provide codebase walkthrough', 1, 2, '2025-12-11'),
(10, 'Design mockups review', 'Review and provide feedback on new UI designs', 0, 1, '2025-12-12'),
(2, 'Refactor legacy code', 'Clean up old payment processing module', 0, 0, '2025-12-30'),
(5, 'Deploy to staging', 'Push latest changes to staging environment for testing', 2, 2, '2025-12-08');

INSERT INTO Group_Tasks (owner_id, name, description, importance, urgency, due_date) VALUES
(1, 'Code review sprint', 'Complete code reviews for all pending pull requests', 2, 2, '2025-12-10'),
(1, 'Refactor authentication module', 'Improve security and performance of auth system', 2, 1, '2025-12-18'),
(1, 'Bug fix release', 'Address critical bugs reported in production', 2, 2, '2025-12-08'),
(2, 'Q4 campaign launch', 'Launch holiday marketing campaign across all channels', 2, 2, '2025-12-15'),
(2, 'Social media content calendar', 'Plan and schedule posts for January', 1, 0, '2025-12-28'),
(3, 'Alpha milestone review', 'Review progress and adjust project timeline', 2, 1, '2025-12-12'),
(3, 'Stakeholder presentation', 'Present Alpha project status to executives', 2, 2, '2025-12-14'),
(3, 'Resource allocation planning', 'Plan team resources for next quarter', 1, 1, '2025-12-20'),
(4, 'CI/CD pipeline upgrade', 'Migrate to new deployment infrastructure', 2, 1, '2025-12-16'),
(4, 'Server monitoring setup', 'Configure alerts for production servers', 2, 2, '2025-12-09'),
(4, 'Database migration', 'Migrate production database to new cluster', 2, 1, '2025-12-22'),
(5, 'Design system update', 'Update component library with new brand guidelines', 1, 1, '2025-12-17'),
(5, 'User research synthesis', 'Compile findings from recent user interviews', 1, 0, '2025-12-25'),
(5, 'Prototype new feature', 'Create interactive prototype for mobile app redesign', 2, 1, '2025-12-19'),
(1, 'Performance testing', 'Conduct load testing on new API endpoints', 1, 1, '2025-12-13');

INSERT INTO Groups (name, description, owner_id) VALUES
('Engineering Team', 'Core development team for main application', 3),
('Marketing Department', 'Marketing campaigns and brand management', 7),
('Project Alpha', 'Cross-functional team for Alpha project initiative', 1),
('DevOps Squad', 'Infrastructure and deployment management', 5),
('Design Guild', 'UI/UX designers and creative team', 9);

INSERT INTO Group_Members (group_id, user_id) VALUES
(1, 0),
(1, 3),
(1, 4),
(1, 8),
(2, 2),
(2, 7),
(2, 10),
(3, 0),
(3, 1),
(3, 4),
(3, 6),
(4, 3),
(4, 5),
(4, 8),
(5, 2),
(5, 6),
(5, 9),
(5, 10);

