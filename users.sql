GRANT SELECT ON soldiers.* TO 'coderhouse'@'localhost';
GRANT SELECT ON gammers.* TO 'coderhouse'@'localhost';

GRANT SELECT ON soldiers.* TO 'coderhouse'@'localhost';
GRANT SELECT ON gammers.* TO 'coderhouse'@'localhost';

GRANT SELECT, INSERT, UPDATE ON soldiers.* TO 'usersoldiers'@'localhost';

REVOKE DELETE ON soldiers.* FROM 'coderhouse'@'localhost';
REVOKE DELETE ON gammers.* FROM 'coderhouse'@'localhost';

REVOKE DELETE ON soldiers.* FROM 'usersoldiers'@'localhost';
