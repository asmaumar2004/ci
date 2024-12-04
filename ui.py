import gradio as gr
from example1 import chain

def chat(question,history):
    if question == "":
    return "please ask a question"
    else:
    return chain.invoke(question)

gr.ChatInterface(
    fn=chat,
    type="messages"
).launch(
share = True,
)