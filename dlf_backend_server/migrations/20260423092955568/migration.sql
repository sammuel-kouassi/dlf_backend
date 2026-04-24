BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "seance" DROP COLUMN "objectifs";
ALTER TABLE "seance" ADD COLUMN "motifs" text;
ALTER TABLE "seance" ADD COLUMN "typeSeance" text;
ALTER TABLE "seance" ADD COLUMN "cible" text;
ALTER TABLE "seance" ADD COLUMN "ville" text;
ALTER TABLE "seance" ADD COLUMN "quartier" text;
ALTER TABLE "seance" ADD COLUMN "presentateur" text;
ALTER TABLE "seance" ADD COLUMN "assistants" json;
ALTER TABLE "seance" ADD COLUMN "nbParticipantsEstime" bigint;
ALTER TABLE "seance" ADD COLUMN "evaluation" bigint;
ALTER TABLE "seance" ALTER COLUMN "zone" DROP NOT NULL;

--
-- MIGRATION VERSION FOR dlf_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dlf_backend', '20260423092955568', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260423092955568', "timestamp" = now();

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
