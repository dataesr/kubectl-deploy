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
      uses: dataesr/kubectl-deploy@v1
      env:
        KUBE_CONFIG: ${{ secrets.*** }}
      with:
        restart: scanr
```
