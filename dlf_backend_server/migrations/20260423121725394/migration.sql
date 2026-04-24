BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "image" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "image" (
    "id" bigserial PRIMARY KEY,
    "seanceId" bigint NOT NULL,
    "url" json NOT NULL,
    "legende" text,
    "date" timestamp without time zone NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "seance" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "seance" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "motifs" text,
    "typeSeance" text,
    "cible" text,
    "zone" text,
    "ville" text,
    "quartier" text,
    "objectifParticipants" bigint NOT NULL,
    "organisateur" text NOT NULL,
    "presentateur" text,
    "assistants" json,
    "datePrevue" timestamp without time zone NOT NULL,
    "heureDebut" text,
    "heureFin" text,
    "estTerminee" boolean NOT NULL,
    "gadgetsPrevus" bigint NOT NULL,
    "gadgetsDistribues" bigint NOT NULL,
    "totalLogistique" double precision NOT NULL,
    "nbParticipantsEstime" bigint,
    "evaluation" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR dlf_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dlf_backend', '20260423121725394', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260423121725394', "timestamp" = now();

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
