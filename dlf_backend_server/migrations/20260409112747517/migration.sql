BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "utilisateur" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "email" text NOT NULL,
    "motDePasse" text NOT NULL,
    "role" text NOT NULL
);


--
-- MIGRATION VERSION FOR dlf_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dlf_backend', '20260409112747517', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260409112747517', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260129180959368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129180959368', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260213194423028', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260213194423028', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260129181112269', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129181112269', "timestamp" = now();


COMMIT;
