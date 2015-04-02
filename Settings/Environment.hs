module Settings.Environment (
    runApiBaseUrl,
    runApiAdminToken,
    runApiAnonymousToken,
    snippetsApiBaseUrl,
    snippetsApiAdminToken
) where

import ClassyPrelude.Yesod
import System.Environment (getEnv)


runApiBaseUrl :: IO String
runApiBaseUrl = getEnv "RUN_API_BASE_URL"

runApiAdminToken :: IO Text
runApiAdminToken = pack <$> getEnv "RUN_API_ADMIN_TOKEN"

runApiAnonymousToken :: IO Text
runApiAnonymousToken = pack <$> getEnv "RUN_API_ANONYMOUS_TOKEN"

snippetsApiBaseUrl :: IO String
snippetsApiBaseUrl = getEnv "SNIPPETS_API_BASE_URL"

snippetsApiAdminToken :: IO Text
snippetsApiAdminToken = pack <$> getEnv "SNIPPETS_API_ADMIN_TOKEN"