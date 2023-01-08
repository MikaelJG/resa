. ./variables.sh

INSTALL_NPX() {
    echo "------------------ STARTING NPX ------------------"
    sleep 2
    npx create-react-app $NOM_DU_PROJET
    # Apps.js is created

    cd "${DIR}/${NOM_DU_PROJET}"
    # change App.js
    sed -i '/<header/,/<\/header>/d' ./src/App.js
    # change la page landing par default
    sed -i '/className="App"/d' ./src/App.js
    sed -i '/import/,/.css.;/d' ./src/App.js

    rm -f ./src/index.css
    touch ./src/index.css
}

INSTALL_SASS() {
    echo ""
    echo "------------------ INSTALLATION DE SASS ------------------"
    sleep 2 
    npm i sass
    mv ./src/App.css ./src/App.scss
    # modify App.js for sass
    sed -i "s/css/scss/" ./src/App.js
    echo ""
    echo "to use a component, add @use './shared.scss'; to App.js"
    sleep 2
}

INSTALL_MATERIAL_UI() {
    echo "------------------ INSTALLATION DE MATERIAL UI ------------------"
    sleep 2 
    npm install @mui/material @emotion/react @emotion/styled
}

INSTALL_NEXTJS() {
    npm install next
}

INSTALL_ALL() {
    INSTALL_NPX
    INSTALL_SASS
    INSTALL_MATERIAL_UI
    INSTALL_NEXTJS
}

# INSTALL_BOOTSTRAP() {
    # add this line in index.html
    # why don't I have an index.html?
#}
