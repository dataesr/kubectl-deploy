# kubectl-deploy.

From https://github.com/myrotvorets/kubectl-action

Make our own to have control over entrypoint.sh

## Usage

```
deploy:
  runs-on: ubuntu-latest
  needs: ['build']
  steps:
    - name: Check Out Repo
      uses: actions/checkout@v2
    - name: Deploy to Cluster
      uses: ./actions
      env:
        KUBE_CONFIG: ${{ secrets.KUBE_CONFIG_STAGING }}
      with:
        target: scanr
```
