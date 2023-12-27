from flask import Flask, render_template
import os

app = Flask(__name__)

# Utilisation d'une variable d'environnement
app.config['MY_VARIABLE'] = os.environ.get('MY_VARIABLE', 'Valeur par défaut')

@app.route('/')
def index():
    # Utilisation de render_template pour charger le fichier HTML
    return render_template('index.html', my_variable=app.config['MY_VARIABLE'])

if __name__ == '__main__':
    # Lancer l'application Flask
    app.run(debug=True)