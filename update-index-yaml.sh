REPO_URL="https://mageran.github.io/helm-charts-repo"

command -v helm > /dev/null || (echo "helm is not installed"; exit -1)

cmd="helm repo index --url ${REPO_URL}"

if [ -f index.yaml ]; then
    cmd="${cmd} --merge index.yaml"
fi

cmd="${cmd} ."

echo ${cmd}
${cmd}