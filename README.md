# 🎓 College Search 🎓
#### A web app to help students search for colleges near them

##  See the Site in action [here](https://college.malphrus.tech) 🚀

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
- Webpack / JS(vanilla)
- Plain old css for styling

### 💡 Primary areas of interest

- View implementation: `app/views/home/index.html.erb`
- Controller implementation: `app/controllers/home_controller.rb`
- Helper implementation: `app/helpers/home_helper.rb`
- JS implementation: `app/javascript/application.js`
- CSS implementation: `app/assets/stylesheets/application.css`
- Helm Chart: `HelmCharts/`

## 🏃‍ Running the app

#### Prerequisites
1. Add the `API_KEY` from [ed.gov](https://collegescorecard.ed.gov/data/documentation/) to the a new .env file at the root of the project.
2. Replace the `key` query param on line 15 of the `app/views/home/index.html.erb` file with your API key.
    - This is due to restrictions i have placed on the on the API key being used in the browser.

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
