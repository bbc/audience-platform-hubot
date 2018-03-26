# Audience Platform Hubot
We spend a lot of our time in [Slack](https://slack.com), so why not make that the place to get Ops tasks done?
Enter Hubot, GitHub's customisable life embetterment robot.

# Building Audience Platform Hubot
In Jenkins, checkout this repo, and use `execute shell` to execute the build.
Your build script should look like this:

```
set +x
export COSMOS_CERT=/etc/pki/tls/private/client_crt_key.pem
export COSMOS_CERT_KEY=/etc/pki/tls/private/client.key
export COSMOS_TIMEOUT=240000

sed -i 's/audience-platform/YOUR-PROJECT/g' project.json package.json
sed -i 's/Hugh/YOUR-ROBOTS-NAME/g' package.json
component="YOUR-PROJECT-hubot"
npm install
npm test
npm run lint
npm run spec
cosmos-build --os=centos7
```

* YOUR-PROJECT would be something like `uas`, `recs`, `idbe`, etc
* YOUR-ROBOTS-NAME is anything you want it to be. By default, Hubot will name itself Hugh after [a Borg](https://en.wikipedia.org/wiki/I,_Borg), but you can choose any name you want. iPlayer call theirs [Mr Meeseeks](https://en.wikipedia.org/wiki/Meeseeks_and_Destroy), so that's taken.
