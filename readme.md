@@# 🩺 Thyroid Medical RAG Assistant
A local, privacy-focused Retrieval-Augmented Generation (RAG) system built in Google Colab to answer complex medical questions using a custom thyroid patient document. 
It utilizes:
**BioMistral** via Ollama for text generation 
**BioBERT** for specialized clinical embeddings
*evaluates the system's performance using the **RAGAS** framework.
⛏⛏Techstack:
**Orchestration:** LangChain (`langchain`, `langchain-community`, `langchain-huggingface`)
**Vector Database:** ChromaDB
**Local LLM Runner:** Ollama
**LLM:** BioMistral 7B (`cniongolo/biomistral`)
**Embedding Model:** BioBERT (`dmis-lab/biobert-v1.1`)
**Evaluation Framework:** RAGAS & Hugging Face Datasets
Requirements:
 Check your runtime is GPU accelerated
 the code 'Zstd' automatically download and install all packages and dependencies
if anything seems missing check requirements.txt
#Ragas look for openapi key for execution. To run Ragas explicitly wrap the Ollama server and embeddings to this
