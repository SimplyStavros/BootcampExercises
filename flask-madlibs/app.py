from flask import Flask, render_template, request
from flask_debugtoolbar import DebugToolbarExtension
from stories import story

app = Flask(__name__)
app.config['SECRET_KEY'] = "BaconPancakes"

debug = DebugToolbarExtension(app)

@app.route('/')
def home_form():
    
    title = "Madlibs"
    prompts = story.prompts

    return render_template("question_form.html", prompts=prompts, title=title)

@app.route('/story')
def show_story():

    title = 'Your Story'
    text = story.generate(request.args)
    return render_template("final_story.html", text=text, title=title)