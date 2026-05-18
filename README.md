# 🛣️ Pothole Detector DevOps System

An intelligent road damage detection and management platform using **YOLOv8** and **MiDaS** monocular depth estimation. This system automates the identification and severity assessment of road potholes from video footage, generating actionable maintenance reports.

## 🚀 Key Features
- **AI Detection**: Real-time pothole detection using YOLOv8.
- **Depth Analysis**: Severity classification based on monocular depth estimation (MiDaS).
- **Geo-Mapping**: Interactive Leaflet.js heatmap of pothole locations.
- **Dashboard**: Professional analytics with Chart.js.
- **Reports**: Automated PDF maintenance report generation.
- **DevOps**: Fully Dockerized with Nginx reverse proxy and CI/CD.

## 🏗️ Architecture
```text
[ DASHCAM VIDEO ] 
      |
      v
[ FLASK BACKEND ] <----> [ YOLOv8 DETECTOR ]
      |                        |
      +------> [ MiDaS DEPTH ESTIMATION ]
      |                        |
[ SQLITE DB ] <---------+------+
      |
      v
[ DASHBOARD / MAP / PDF REPORT ]
```

## 🛠️ Tech Stack
- **Backend**: Flask, SQLAlchemy, FPDF2
- **AI**: YOLOv8 (Ultralytics), PyTorch, OpenCV
- **Frontend**: HTML5, Vanilla CSS (Glassmorphism), Leaflet.js, Chart.js
- **DevOps**: Docker, Nginx, GitHub Actions

## 📦 Getting Started

### Prerequisites
- Docker & Docker Compose

### Quick Start
```bash
git clone https://github.com/your-username/pothole-detector-devops.git
cd pothole-detector-devops
docker-compose up --build
```
Access the system at `http://localhost`.

### Local Development
1. `pip install -r requirements.txt`
2. `python app/main.py`

## 🧪 Testing
Run automated tests with pytest:
```bash
pytest tests/
```

## 🛡️ API Endpoints
- `GET /health` - System health check
- `POST /upload` - Upload and process video
- `GET /dashboard` - View analytics
- `GET /map` - View interactive risk map
- `GET /report/<id>` - Download PDF report

## 📈 Future Enhancements
- [ ] Integration with Road Maintenance Management Systems (RMMS).
- [ ] Real-time mobile app for citizen reporting.
- [ ] Multi-class road damage detection (cracks, fading markers).
