\connect tariffs;

-- TariffHead
CREATE TABLE tariffs_schema."TariffHead"
(
    "Id" serial NOT NULL,
    "Name" character varying(255) NOT NULL,
    "Description" character varying(1024),
    "StartTimestamp" timestamp NOT NULL,
    "EndTimestamp" timestamp,
    "Enabled" boolean NOT NULL,
    PRIMARY KEY ("Id"),
    CONSTRAINT "TariffHead_NameUnique" UNIQUE ("Name")
)
WITH (
    OIDS = FALSE
);

ALTER TABLE tariffs_schema."TariffHead"
    OWNER to openapi;

--Free tariff
CREATE TABLE tariffs_schema."FreeTariff"
(
    "IdTariff" integer NOT NULL,
    PRIMARY KEY ("IdTariff"),
    CONSTRAINT "FreeTariff_IdTariffFK" FOREIGN KEY ("IdTariff")
        REFERENCES tariffs_schema."TariffHead" ("Id") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
);
ALTER TABLE tariffs_schema."FreeTariff"
    OWNER to openapi;

--Pay as you go tariff
CREATE TABLE tariffs_schema."PayAsYouGoTariff"
(
    "IdTariff" integer NOT NULL,
    "Price" money NOT NULL,
    PRIMARY KEY ("IdTariff"),
    CONSTRAINT "PayAsYouGoTariff_IdTariffFK" FOREIGN KEY ("IdTariff")
        REFERENCES tariffs_schema."TariffHead" ("Id") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
);

ALTER TABLE tariffs_schema."PayAsYouGoTariff"
    OWNER to openapi;

--Freemuim tariff
CREATE TABLE tariffs_schema."FreemiumTariff"
(
    "IdTariff" integer NOT NULL,
    "BaseAmount" integer NOT NULL,
    "Price" money NOT NULL,
    PRIMARY KEY ("IdTariff"),
    CONSTRAINT "FreemiumTariff_IdTariffFK" FOREIGN KEY ("IdTariff")
        REFERENCES tariffs_schema."TariffHead" ("Id") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
);

ALTER TABLE tariffs_schema."FreemiumTariff"
    OWNER to openapi;

