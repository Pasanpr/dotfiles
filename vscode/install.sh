declare -a EXTENSIONS=(
    "teabyii.ayu",
    "bierner.markdown-preview-github-styles",
    "CoenraadS.bracket-pair-colorizer",
    "dawhite.mustache",
    "esbenp.prettier-vscode",
    "kumar-harsh.graphql-for-vscode",
    "mariomatheu.syntax-project-pbxproj",
    "ms-vscode.vscode-typescript-tslint-plugin",
    "oderwat.indent-rainbow"
)

for EXTENSION in ${EXTENSIONS[*]}
do
    code --install-extension $EXTENSION
done

echo "Copying settings file..."

cp ./vscode/settings.json ~/Library/Application Support/Code/User/settings.json