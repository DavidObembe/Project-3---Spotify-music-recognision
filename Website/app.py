from flask import Flask, render_template, request,  jsonify
from mlPredict import Predictor


app = Flask(__name__)

# External Class for doing work
quandlHelper = Predictor()

@app.route("/")

@app.route('/predictGenreIndividual/', methods=['POST'])
def predictGenreIndividual():

    #Capture Input for Web  Page
    # content = request.json["data"]
    # stock = content["stock"]
    
    newGenre = predictGenreIndividual(acoustic, dance, duration, energy, instrumental, live, loud, speech, temp, val, popularity, key, mode):
    return newGenre



if __name__ == "__main__":
    app.run(debug=True)
