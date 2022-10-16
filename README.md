# 🎓 College Search 🎓
#### A web app to help students search for colleges near them

##  See the Site in action [here](https://https://college.malphrus.tech) 🚀

## 💻 Technical Details

#### Deployment

- Kubernetes Cluster on Linode (My personal lab)
- Helm
- Nginx Ingress Controller
- LetsEncrypt Cert Manager
- Kubernetes Secrets
- Make
- Docker
- Docker Hub (prefer ECR for private repos)

#### Backend

- Ruby on Rails

#### Frontend

- Rails rendered ERB
- Webpack for JS(vanilla)
- Plain old css for styling

## 🏃‍ Running the app

#### Docker Compose
1. Clone the repo
2. Run `docker-compose up`
3. Visit `localhost:3000` in your browser

#### Make
1. clone the repo
2. `make run` to build and run the app via docker-compose
3. visit `localhost:3000` in your browser

#### Local
1. Clone the repo
2. ensure webpack is installed globally (`npm install -g webpack`)
3. Run `bundle && npm i && npm run build`
4. Run `rails s`
5. Visit `localhost:3000` in your browser
