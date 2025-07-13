
# 🖼️ FaceBlur Backend

This repository contains the **FastAPI** backend that automatically **detects faces and applies Gaussian blur** using **RetinaFace** for detection and **OpenCV** for blurring. It powers the Hugging Face Space **[salonik07/faceblur-backend](https://huggingface.co/spaces/salonik07/faceblur-backend)**.

> **Live inference endpoint:**
> `https://salonik07-faceblur-backend.hf.space/process`

---

## 📂 Project Structure

```
faceblur-backend/
├── app.py              # FastAPI application (main entry‑point)
├── requirements.txt    # Python dependencies
├── README.md           # ▶️ You are here
└── ...
```

---

## 🚀 Quick Start (local)

```bash
git clone https://github.com/Saloni0000/blurface-backend.git
cd blurface-backend
python -m venv venv && source venv/bin/activate  # (Windows: venv\Scripts\activate)
pip install -r requirements.txt
uvicorn app:app --reload          # visit http://127.0.0.1:8000
```

---

## 🛠️ Endpoint

| Method | Path       | Description                   |
|--------|-----------|-------------------------------|
| POST   | `/process` | Detect & blur faces in image |

### Example `curl`

```bash
curl -X POST -F "file=@your_image.jpg" \
     https://salonik07-faceblur-backend.hf.space/process \
     --output result.jpg
```

---

## 📦 Key Dependencies

- **FastAPI** – web framework  
- **RetinaFace** – face detection  
- **OpenCV‑Python** – image processing  
- **DeepFace** – optional / compatibility  
- **Uvicorn** – ASGI server

See `requirements.txt` for full list.

---

## 🌐 Deploy on Hugging Face Spaces (if forking)

1. Create a new Space (SDK‑based).  
2. Push repo; set **App file** to `app.py`.  
3. Space builds from `requirements.txt` and serves at `https://<username>-faceblur-backend.hf.space`.

---

## 📌 Frontend Usage Snippet

```js
const data = new FormData();
data.append("file", fileInput.files[0]);

fetch("https://salonik07-faceblur-backend.hf.space/process", {
  method: "POST",
  body: data,
})
  .then(r => r.blob())
  .then(imgBlob => {
    document.querySelector("#preview").src = URL.createObjectURL(imgBlob);
  });
```

---

## 📝 License

MIT © 2024 Saloni0000

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/Saloni0000" target="_blank">Saloni0000</a>
  <br/><br/>
  <a href="https://github.com/Saloni0000/blurface-backend" target="_blank">
    <img alt="GitHub badge" src="https://img.shields.io/badge/View%20on-GitHub-24292e?logo=github">
  </a>
</p>
