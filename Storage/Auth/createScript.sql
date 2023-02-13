-- Table: public.user_accounts

-- DROP TABLE IF EXISTS public.user_accounts;

CREATE TABLE IF NOT EXISTS public.user_accounts
(
    id SERIAL PRIMARY KEY,
    email VARCHAR UNIQUE NOT NULL,
    phone_number VARCHAR UNIQUE NOT NULL,
    gender VARCHAR( 1 ),
    first_name VARCHAR,
    last_name VARCHAR,
    password_hash VARCHAR,
    created_at timestamp,
    updated_at timestamp,
    deleted_at timestamp
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.user_accounts
    OWNER to admin;
-- Index: idx_user_accounts_deleted_at

-- DROP INDEX IF EXISTS public.idx_user_accounts_deleted_at;

CREATE INDEX IF NOT EXISTS idx_user_accounts_deleted_at
    ON public.user_accounts USING btree
    (deleted_at ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: user_accounts_email_idx

-- DROP INDEX IF EXISTS public.user_accounts_email_idx;

CREATE UNIQUE INDEX IF NOT EXISTS user_accounts_email_idx
    ON public.user_accounts USING btree
    (email COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: user_accounts_phone_number_idx

-- DROP INDEX IF EXISTS public.user_accounts_phone_number_idx;

CREATE UNIQUE INDEX IF NOT EXISTS user_accounts_phone_number_idx
    ON public.user_accounts USING btree
    (phone_number COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;


-- Table: public.unauthorized_tokens

-- DROP TABLE IF EXISTS public.unauthorized_tokens;

CREATE TABLE IF NOT EXISTS public.unauthorized_tokens
(
    id INTEGER REFERENCES user_accounts ON DELETE CASCADE ON UPDATE CASCADE,
    token VARCHAR,
    expiration timestamp,
    created_at timestamp,
    deleted_at timestamp,
    updated_at timestamp
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.unauthorized_tokens
    OWNER to admin;
-- Index: unauthorized_tokens_token_idx

-- DROP INDEX IF EXISTS public.unauthorized_tokens_token_idx;

CREATE INDEX IF NOT EXISTS unauthorized_tokens_token_idx
    ON public.unauthorized_tokens USING btree
    (token COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
