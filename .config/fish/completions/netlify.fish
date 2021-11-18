set -l seen __fish_seen_subcommand_from

set -l commands addons addons:auth addons:config addons:create addons:delete addons:list api build deploy dev dev:exec dev:trace env env:get env:import env:list env:set env:unset functions functions:build functions:create functions:invoke functions:list functions:serve init link lm lm:info lm:install lm:setup lm:uninstall login logout open open:admin open:site sites sites:create sites:delete sites:list status status:hooks switch unlink watch plugins plugins:inspect plugins:install plugins:link plugins:uninstall plugins:update help completion completion:generate completion:generate:alias

complete -c netlify -n "not $seen $commands" -f -a addons -d '(Beta) Manage Netlify Add-ons'

complete -c netlify -n "not $seen $commands" -f -a addons:auth -d 'Login to add-on provider'
complete -c netlify -n "$seen addons:auth" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen addons:auth" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen addons:auth" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a addons:config -d 'Configure add-on settings'
complete -c netlify -n "$seen addons:config" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen addons:config" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen addons:config" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a addons:create -d 'Add an add-on extension to your site'
complete -c netlify -n "$seen addons:create" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen addons:create" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen addons:create" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a addons:delete -d 'Remove an add-on extension to your site'
complete -c netlify -n "$seen addons:delete" -l force -s f -d 'delete without prompting (useful for CI)'
complete -c netlify -n "$seen addons:delete" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen addons:delete" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen addons:delete" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a addons:list -d 'List currently installed add-ons for site'
complete -c netlify -n "$seen addons:list" -l json -d 'Output add-on data as JSON'
complete -c netlify -n "$seen addons:list" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen addons:list" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen addons:list" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a api -d 'Run any Netlify API method'
complete -c netlify -n "$seen api" -l data -s d -r -d 'Data to use'
complete -c netlify -n "$seen api" -l list -d 'List out available API methods'
complete -c netlify -n "$seen api" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen api" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen api" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a build -d '(Beta) Build on your local machine'
complete -c netlify -n "$seen build" -l dry -d 'Dry run: show instructions without running them'
complete -c netlify -n "$seen build" -l context -r -d 'Build context'
complete -c netlify -n "$seen build" -l offline -s o -d 'disables any features that require network access'
complete -c netlify -n "$seen build" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen build" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen build" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a deploy -d 'Create a new deploy from the contents of a folder'
complete -c netlify -n "$seen deploy" -l dir -s d -r -d 'Specify a folder to deploy'
complete -c netlify -n "$seen deploy" -l functions -s f -r -d 'Specify a functions folder to deploy'
complete -c netlify -n "$seen deploy" -l prod -s p -d 'Deploy to production'
complete -c netlify -n "$seen deploy" -l prodIfUnlocked -d 'Deploy to production if unlocked, create a draft otherwise'
complete -c netlify -n "$seen deploy" -l alias -r -d 'Specifies the alias for deployment, the string at the beginning of the deploy subdomain. Useful for creating predictable deployment URLs. Avoid setting an alias string to the same value as a deployed branch. `alias` doesn’t create a branch deploy and can’t be used in conjunction with the branch subdomain feature. Maximum 37 characters.'
complete -c netlify -n "$seen deploy" -l branch -s b -r -d 'Serves the same functionality as --alias. Deprecated and will be removed in future versions'
complete -c netlify -n "$seen deploy" -l open -s o -d 'Open site after deploy'
complete -c netlify -n "$seen deploy" -l message -s m -r -d 'A short message to include in the deploy log'
complete -c netlify -n "$seen deploy" -l auth -s a -r -d 'Netlify auth token to deploy with'
complete -c netlify -n "$seen deploy" -l site -s s -r -d 'A site ID to deploy to'
complete -c netlify -n "$seen deploy" -l json -d 'Output deployment data as JSON'
complete -c netlify -n "$seen deploy" -l timeout -r -d 'Timeout to wait for deployment to finish'
complete -c netlify -n "$seen deploy" -l trigger -d 'Trigger a new build of your site on Netlify without uploading local files'
complete -c netlify -n "$seen deploy" -l build -d 'Run build command before deploying'
complete -c netlify -n "$seen deploy" -l skip-functions-cache -d 'Ignore any functions created as part of a previous `build` or `deploy` commands, forcing them to be bundled again as part of the deployment'
complete -c netlify -n "$seen deploy" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen deploy" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen deploy" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a dev -d 'Local dev server'
complete -c netlify -n "$seen dev" -l command -s c -r -d 'command to run'
complete -c netlify -n "$seen dev" -l port -s p -r -d 'port of netlify dev'
complete -c netlify -n "$seen dev" -l targetPort -r -d 'port of target app server'
complete -c netlify -n "$seen dev" -l framework -r -d 'framework to use. Defaults to #auto which automatically detects a framework'
complete -c netlify -n "$seen dev" -l dir -s d -r -d 'dir with static files'
complete -c netlify -n "$seen dev" -l functions -s f -r -d 'specify a functions folder to serve'
complete -c netlify -n "$seen dev" -l offline -s o -d 'disables any features that require network access'
complete -c netlify -n "$seen dev" -l live -s l -d 'start a public live session'
complete -c netlify -n "$seen dev" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen dev" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen dev" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a dev:exec -d 'Exec command'
complete -c netlify -n "$seen dev:exec" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen dev:exec" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen dev:exec" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a dev:trace -d 'Trace command'
complete -c netlify -n "$seen dev:trace" -l request -s X -r -d 'Specifies a custom request method [default: GET]'
complete -c netlify -n "$seen dev:trace" -l cookie -s b -r -d 'Request cookie, this flag can be used multiple times. Example: "nf_jwt=token"'
complete -c netlify -n "$seen dev:trace" -l header -s H -r -d 'Request header, this flag can be used multiple times. Example: "Host: netlify.test"'
complete -c netlify -n "$seen dev:trace" -l watch -s w -r -d 'Path to the publish directory'
complete -c netlify -n "$seen dev:trace" -l debug -d 'Print debugging information'

complete -c netlify -n "not $seen $commands" -f -a env -d '(Beta) Control environment variables for the current site'
complete -c netlify -n "$seen env" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen env" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen env" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a env:get -d 'Get resolved value of specified environment variable (includes netlify.toml)'
complete -c netlify -n "$seen env:get" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen env:get" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen env:get" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a env:import -d 'Import and set environment variables from .env file'
complete -c netlify -n "$seen env:import" -l replaceExisting -s r -d 'Replace all existing variables instead of merging them with the current ones'
complete -c netlify -n "$seen env:import" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen env:import" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen env:import" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a env:list -d 'Lists resolved environment variables for site (includes netlify.toml)'
complete -c netlify -n "$seen env:list" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen env:list" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen env:list" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a env:set -d 'Set value of environment variable'
complete -c netlify -n "$seen env:set" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen env:set" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen env:set" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a env:unset -d 'Unset an environment variable which removes it from the UI'
complete -c netlify -n "$seen env:unset" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen env:unset" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen env:unset" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a functions -d 'Manage netlify functions'

complete -c netlify -n "not $seen $commands" -f -a functions:build -d 'Build functions locally'
complete -c netlify -n "$seen functions:build" -l functions -s f -r -d 'Specify a functions directory to build to'
complete -c netlify -n "$seen functions:build" -l src -s s -r -d 'Specify the source directory for the functions'
complete -c netlify -n "$seen functions:build" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen functions:build" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen functions:build" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a functions:create -d 'Create a new function locally'
complete -c netlify -n "$seen functions:create" -l name -s n -r -d 'function name'
complete -c netlify -n "$seen functions:create" -l url -s u -r -d 'pull template from URL'
complete -c netlify -n "$seen functions:create" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen functions:create" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen functions:create" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a functions:invoke -d 'Trigger a function while in netlify dev with simulated data, good for testing function calls including Netlify\'s Event Triggered Functions'
complete -c netlify -n "$seen functions:invoke" -l name -s n -r -d 'function name to invoke'
complete -c netlify -n "$seen functions:invoke" -l functions -s f -r -d 'Specify a functions folder to parse, overriding netlify.toml'
complete -c netlify -n "$seen functions:invoke" -l querystring -s q -r -d 'Querystring to add to your function invocation'
complete -c netlify -n "$seen functions:invoke" -l payload -s p -r -d 'Supply POST payload in stringified json, or a path to a json file'
complete -c netlify -n "$seen functions:invoke" -l identity -d 'simulate Netlify Identity authentication JWT. pass --no-identity to affirm unauthenticated request'
complete -c netlify -n "$seen functions:invoke" -l port -r -d 'Port where netlify dev is accessible. e.g. 8888'
complete -c netlify -n "$seen functions:invoke" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen functions:invoke" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen functions:invoke" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a functions:list -d 'List functions that exist locally'
complete -c netlify -n "$seen functions:list" -l name -s n -r -d 'name to print'
complete -c netlify -n "$seen functions:list" -l functions -s f -r -d 'Specify a functions directory to list'
complete -c netlify -n "$seen functions:list" -l json -d 'Output function data as JSON'
complete -c netlify -n "$seen functions:list" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen functions:list" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen functions:list" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a functions:serve -d '(Beta) Serve functions locally'
complete -c netlify -n "$seen functions:serve" -l functions -s f -r -d 'Specify a functions directory to serve'
complete -c netlify -n "$seen functions:serve" -l port -s p -r -d 'Specify a port for the functions server'
complete -c netlify -n "$seen functions:serve" -l offline -s o -d 'disables any features that require network access'
complete -c netlify -n "$seen functions:serve" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen functions:serve" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen functions:serve" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a init -d 'Configure continuous deployment for a new or existing site. To create a new site without continuous deployment, use `netlify sites:create`'
complete -c netlify -n "$seen init" -l manual -s m -d 'Manually configure a git remote for CI'
complete -c netlify -n "$seen init" -l force -d 'Reinitialize CI hooks if the linked site is already configured to use CI'
complete -c netlify -n "$seen init" -l gitRemoteName -r -d 'Name of Git remote to use. e.g. "origin"'
complete -c netlify -n "$seen init" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen init" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen init" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a link -d 'Link a local repo or project folder to an existing site on Netlify'
complete -c netlify -n "$seen link" -l id -r -d 'ID of site to link to'
complete -c netlify -n "$seen link" -l name -r -d 'Name of site to link to'
complete -c netlify -n "$seen link" -l gitRemoteName -r -d 'Name of Git remote to use. e.g. "origin"'
complete -c netlify -n "$seen link" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen link" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen link" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a lm -d 'Handle Netlify Large Media operations'
complete -c netlify -n "$seen lm" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen lm" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen lm" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a lm:info -d 'Show large media requirements information.'
complete -c netlify -n "$seen lm:info" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen lm:info" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen lm:info" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a lm:install -d 'Configures your computer to use Netlify Large Media.'
complete -c netlify -n "$seen lm:install" -l force -s f -d 'Force the credentials helper installation'

complete -c netlify -n "not $seen $commands" -f -a lm:setup -d 'Configures your site to use Netlify Large Media.'
complete -c netlify -n "$seen lm:setup" -l skip-install -s s -d 'Skip the credentials helper installation check'
complete -c netlify -n "$seen lm:setup" -l force-install -s f -d 'Force the credentials helper installation'
complete -c netlify -n "$seen lm:setup" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen lm:setup" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen lm:setup" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a login -d 'Login to your Netlify account'
complete -c netlify -n "$seen login" -l new -d 'Login to new Netlify account'
complete -c netlify -n "$seen login" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen login" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen login" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a open -d 'Open settings for the site linked to the current folder'
complete -c netlify -n "$seen open" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen open" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen open" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'
complete -c netlify -n "$seen open" -l site -d 'Open site'
complete -c netlify -n "$seen open" -l admin -d 'Open Netlify site'

complete -c netlify -n "not $seen $commands" -f -a open:admin -d 'Opens current site admin UI in Netlify'
complete -c netlify -n "$seen open:admin" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen open:admin" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen open:admin" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a open:site -d 'Opens current site url in browser'
complete -c netlify -n "$seen open:site" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen open:site" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen open:site" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a sites -d 'Handle various site operations'

complete -c netlify -n "not $seen $commands" -f -a sites:create -d 'Create an empty site (advanced)'
complete -c netlify -n "$seen sites:create" -l name -s n -r -d 'name of site'
complete -c netlify -n "$seen sites:create" -l account-slug -s a -r -d 'account slug to create the site under'
complete -c netlify -n "$seen sites:create" -l with-ci -s c -d 'initialize CI hooks during site creation'
complete -c netlify -n "$seen sites:create" -l manual -s m -d 'Force manual CI setup.  Used --with-ci flag'
complete -c netlify -n "$seen sites:create" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen sites:create" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen sites:create" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a sites:delete -d 'Delete a site'
complete -c netlify -n "$seen sites:delete" -l force -s f -d 'delete without prompting (useful for CI)'
complete -c netlify -n "$seen sites:delete" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen sites:delete" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen sites:delete" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a sites:list -d 'List all sites you have access to'
complete -c netlify -n "$seen sites:list" -l json -d 'Output site data as JSON'
complete -c netlify -n "$seen sites:list" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen sites:list" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen sites:list" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a status -d 'Print status information'
complete -c netlify -n "$seen status" -l verbose -d 'Output system info'
complete -c netlify -n "$seen status" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen status" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen status" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a status:hooks -d 'Print hook information of the linked site'
complete -c netlify -n "$seen status:hooks" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen status:hooks" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen status:hooks" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a switch -d 'Switch your active Netlify account'
complete -c netlify -n "$seen switch" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen switch" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen switch" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a unlink -d 'Unlink a local folder from a Netlify site'
complete -c netlify -n "$seen unlink" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen unlink" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen unlink" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a watch -d 'Watch for site deploy to finish'
complete -c netlify -n "$seen watch" -l debug -d 'Print debugging information'
complete -c netlify -n "$seen watch" -l httpProxy -r -d 'Proxy server address to route requests through.'
complete -c netlify -n "$seen watch" -l httpProxyCertificateFilename -r -d 'Certificate file to use when connecting using a proxy server'

complete -c netlify -n "not $seen $commands" -f -a plugins -d 'list installed plugins'
complete -c netlify -n "$seen plugins" -l core -d 'show core plugins'

complete -c netlify -n "not $seen $commands" -f -a plugins:inspect -d 'displays installation properties of a plugin'
complete -c netlify -n "$seen plugins:inspect" -l help -s h -d 'show CLI help'
complete -c netlify -n "$seen plugins:inspect" -l verbose -s v

complete -c netlify -n "not $seen $commands" -f -a plugins:install -d 'installs a plugin into the CLI'
complete -c netlify -n "$seen plugins:install" -l help -s h -d 'show CLI help'
complete -c netlify -n "$seen plugins:install" -l verbose -s v
complete -c netlify -n "$seen plugins:install" -l force -s f -d 'yarn install with force flag'

complete -c netlify -n "not $seen $commands" -f -a plugins:link -d 'links a plugin into the CLI for development'
complete -c netlify -n "$seen plugins:link" -l help -s h -d 'show CLI help'
complete -c netlify -n "$seen plugins:link" -l verbose -s v

complete -c netlify -n "not $seen $commands" -f -a plugins:uninstall -d 'removes a plugin from the CLI'
complete -c netlify -n "$seen plugins:uninstall" -l help -s h -d 'show CLI help'
complete -c netlify -n "$seen plugins:uninstall" -l verbose -s v

complete -c netlify -n "not $seen $commands" -f -a plugins:update -d 'update installed plugins'
complete -c netlify -n "$seen plugins:update" -l help -s h -d 'show CLI help'
complete -c netlify -n "$seen plugins:update" -l verbose -s v

complete -c netlify -n "not $seen $commands" -f -a help -d 'display help for <%= config.bin %>'
complete -c netlify -n "$seen help" -l all -d 'see all commands in CLI'

complete -c netlify -n "not $seen $commands" -f -a completion -d 'Generate shell completion script'
complete -c netlify -n "$seen completion" -l shell -s s -x -a "bash fish zsh" -d 'Name of shell'

complete -c netlify -n "not $seen $commands" -f -a completion:generate -d 'Generates completion script'
complete -c netlify -n "$seen completion:generate" -l shell -s s -x -a "bash fish zsh" -d 'Name of shell'

complete -c netlify -n "not $seen $commands" -f -a completion:generate:alias -d 'Generates completion script for alias'
complete -c netlify -n "$seen completion:generate:alias" -l shell -s s -x -a "bash fish" -d 'Name of shell'

complete -c ntl -w netlify
