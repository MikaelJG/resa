. ./variables.sh

MOD_APP_JS() {
    echo "
        import './App.scss';
        
        function App() {
            return (
                <div className='App'>

    " > ./src/App.js
    for i in "${ARGUMENTS[@]}";
        do
        # i must be capitalized 
        I=`echo "${i^}"`
        # import component at top of App.js
        echo "import ${I} from './components/${I}';" | cat - ./src/App.js > temp && mv temp ./src/App.js 
        # CSS of component at middle of App.js
        echo "
                <${I} />
        " >> ./src/App.js
    done
    # export at end the file (end)
    echo "
            </div>
        )
    }
    
    export default App;
    " >> ./src/App.js
}

DEFAULT_APP_JS() {
    # link les components dans App.js
    echo "
    import Navbar from './components/Navbar';
    import Content from './components/Content';
    import Footer from './components/Footer';
    import Button from '@mui/material/Button';
    import './App.scss';
    
    export default function App() {
        return (
            <div className='App'>
                <Navbar />
                <Content />
                <Footer />
                <Button variant=\"contained\"
                    onClick={() => {
                      alert('clicked');
                    }}
                  > Hello Julien!</Button>
            </div>
        )
    }" > ./src/App.js
    touch ./src/components/Navbar.js
    echo "
    export default function Navbar() {
        return (
            <div>
                <h1>Navbar</h1>
            </div>
        )
    }" >> ./src/components/Navbar.js
    echo "
    export default function Footer() {
        return (
            <div>
                <h1>Footer</h1>
            </div>
        )
    }" >> ./src/components/Footer.js
    touch ./src/components/Header.js
    echo "
    export default function Header() {
        return (
            <div>
                <h1>Header</h1>
            </div>
        )
    }" >> ./src/components/Header.js
    touch ./src/components/Content.js
    echo "
    export default function Content() {
        return (
            <div>
                <h1>Content</h1>
            </div>
        )
    }" >> ./src/components/Content.js
}

