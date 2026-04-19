BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "distribution" (
    "id" bigserial PRIMARY KEY,
    "seanceId" bigint NOT NULL,
    "participantId" bigint NOT NULL,
    "gadgetId" bigint NOT NULL,
    "quantite" bigint NOT NULL,
    "dateDistribution" timestamp without time zone NOT NULL,
    "agentId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "gadget" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "categorie" text NOT NULL,
    "stockInitial" bigint NOT NULL,
    "distribues" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "participant" (
    "id" bigserial PRIMARY KEY,
    "seanceId" bigint NOT NULL,
    "nom" text NOT NULL,
    "prenom" text NOT NULL,
    "telephone" text NOT NULL,
    "profession" text,
    "statutLogement" text NOT NULL,
    "lieu" text,
    "localite" text NOT NULL,
    "quartier" text,
    "besoinsExprimes" json NOT NULL,
    "ressenti" text,
    "consentement" boolean NOT NULL,
    "statut" text NOT NULL,
    "dateInscription" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "prise_contact" (
    "id" bigserial PRIMARY KEY,
    "seanceId" bigint NOT NULL,
    "nomContact" text NOT NULL,
    "telephone" text NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "objetMission" text NOT NULL,
    "directionRegionale" text NOT NULL,
    "agence" text,
    "quartier" text,
    "site" text,
    "pointsAbordes" json NOT NULL,
    "observations" text,
    "signatureBase64" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rdv" (
    "id" bigserial PRIMARY KEY,
    "seanceId" bigint NOT NULL,
    "titre" text NOT NULL,
    "contact" text NOT NULL,
    "dateRdv" timestamp without time zone NOT NULL,
    "heure" text NOT NULL,
    "lieu" text NOT NULL,
    "statut" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "seance" (
    "id" bigserial PRIMARY KEY,
    "nom" text NOT NULL,
    "objectifs" text,
    "zone" text NOT NULL,
    "objectifParticipants" bigint NOT NULL,
    "organisateur" text NOT NULL,
    "datePrevue" timestamp without time zone NOT NULL,
    "heureDebut" text,
    "heureFin" text,
    "statut" text NOT NULL
);


--
-- MIGRATION VERSION FOR dlf_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dlf_backend', '20260408092012582', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260408092012582', "timestamp" = now();

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
