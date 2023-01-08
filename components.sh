
FIND_COMPONENTS() {
    COMPONENTS_DIR=$DIR/components
    for file in "$COMPONENTS_DIR"/*
        do
            if [ -f "$file" ];
                then
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"

                COMPONENTS+=( "$filename" )
            fi
    done
}

ARE_COMPONENTS() {
    FIND_COMPONENTS

    for i in "${ARGUMENTS[@]}";
        do
            if [[ " ${COMPONENTS[*]} " =~ " $i " ]];
                then
                # is inside arg array, append matching array
                WANTED_COMPONENTS+=($i)
            fi
    done

    if [[ ${#WANTED_COMPONENTS[@]} -eq ${#ARGUMENTS[@]} ]];
        then
        echo "all components, returning true"
        return 0
        # returns true
    else
        echo "not all components, returning false"
        return 1 
        # return false
    fi
}

CREATE_COMPONENT_FILES_SCSS() {
    echo "------------------ CREATION DU FICHIER VARIABLES.SCSS ------------------"
    sleep 2 

    mkdir ./src/components

    for i in "${ARGUMENTS[@]}";
        do
            # i should be capitalized
            I=`echo "${i^}"`

            # create component file
            touch ./src/components/${I}.js

            # write component file
            echo "
            function ${I}() {
              return (
                  <div className='${I}'>
                      <p> This is my ${I}</p>
                  </div>
              )
            }
            
            export default ${I};
            " > ./src/components/${I}.js
    done

    # create _variables.scss in dir components
    touch ./src/components/_variables.scss

    # write _variables.scss
    echo "
    // COLORS //
    
    \$white: #ffffff;
    
    \$black: #151515;
    " > ./src/components/_variables.scss

    echo "------------------ IMPORTATION DU FICHIER VARIABLES.SCSS ------------------"
    sleep 2 

    # import _variables.scss in App.scss
    echo "@import './components/variables';" > ./src/App.scss
}

COMPONENTS_ALL() {
    CREATE_COMPONENT_FILES_SCSS

    if [ $# -eq 0 ];
        then
        DEFAULT_APP_JS
    else
        MOD_APP_JS
    fi
}

