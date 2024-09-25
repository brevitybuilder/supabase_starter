CREATE EXTENSION vector;

CREATE SCHEMA auth;

CREATE TABLE auth.session (
  id TEXT PRIMARY KEY,
  created_at TIMESTAMP(3) WITH TIME ZONE DEFAULT current_timestamp,
  expires_at TIMESTAMPTZ,
  user_id TEXT
);

CREATE TABLE auth.verification_token (
  identifier TEXT NOT NULL,
  expires_at TIMESTAMPTZ NOT NULL,
  token TEXT NOT NULL,
  PRIMARY KEY (identifier, token)
);

CREATE TABLE "user" (
  id TEXT PRIMARY KEY,
  "created date" TIMESTAMP(3) WITH TIME ZONE DEFAULT current_timestamp,
  "updated date" TIMESTAMP(3) WITH TIME ZONE DEFAULT current_timestamp,
  email TEXT,
  password TEXT
);

CREATE SCHEMA storage;

CREATE TABLE storage.objects (
  key TEXT PRIMARY KEY,
  name TEXT,
  type TEXT,
  size INT,
  created_at TIMESTAMPTZ
);
