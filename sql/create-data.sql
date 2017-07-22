\connect tariffs;

INSERT INTO tariffs_schema."TariffHead"("Name", "Description", "Enabled", "StartTimestamp") VALUES ('Tariff1', 'Test Free tariff', true, now());
INSERT INTO tariffs_schema."TariffHead"("Name", "Description", "Enabled", "StartTimestamp") VALUES ('Tariff2', 'Test pay as you go tariff', true, now());
INSERT INTO tariffs_schema."TariffHead"("Name", "Description", "Enabled", "StartTimestamp") VALUES ('Tariff3', 'Test Freemium tariff', true, now());


INSERT INTO tariffs_schema."FreeTariff"("IdTariff") VALUES (1);
INSERT INTO tariffs_schema."PayAsYouGoTariff"("IdTariff", "Price") VALUES (2, 1.56);
INSERT INTO tariffs_schema."FreemiumTariff"("IdTariff", "BaseAmount", "Price") VALUES (3, 10000, 3.90);