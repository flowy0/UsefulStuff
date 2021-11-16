GCLOUD_SDK_ROOT=$(gcloud info --format='value(installation.sdk_root)')
echo $GCLOUD_SDK_ROOT
GCLOUD_CONFIG=$(gcloud info --format='value(config.paths.global_config_dir)')
echo $GCLOUD_CONFIG

echo "removing gcloud cli"
echo $(rm -rf $GCLOUD_SDK_ROOT $GCLOUD_CONFIG)

echo "removing lib caches"
find ~/Library/Caches/ -type d -name "google-cloud-sdk" | xargs rm -r