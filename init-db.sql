-- Creates the Keycloak database alongside the default POSTGRES_DB (technobrain).
-- This script runs once on first volume initialisation.
SELECT 'CREATE DATABASE nkeycloak'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'nkeycloak')\gexec
