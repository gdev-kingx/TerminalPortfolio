command=""
isActive=true

name=""
aoi=""

underline=`tput smul`
nounderline=`tput rmul`

Main() {
    StartSession
}

StartSession() {
    PrintBanner
    PrintOpening
    while $isActive; do
        AwaitCommand
    done
}

PrintBanner() {
    echo "                                                                     "    
    echo "        (                            )  (        )                )  "
    echo " (      )\ )                      ( /(  )\ )  ( /(  (          ( /(  "
    echo " )\ )  (()/(   (    (   (         )\())(()/(  )\()) )\ )       )\()) "
    echo "(()/(   /(_))  )\   )\  )\  ___ |((_)\  /(_))((_)\ (()/(      ((_)\  "
    echo " /(_))_(_))_  ((_) ((_)((_)|___||_ ((_)(_))   _((_) /(_))_    __((_) "
    echo "(_)) __||   \ | __|\ \ / /      | |/ / |_ _| | \| |(_)) __|   \ \/ / "
    echo "  | (_ || |) || _|  \ V /_      |  ' <  | |  | .\ |  | (_ | _  >  <  "
    echo "   \___||___/ |___|  \_/(_)     |_|\_\ |___| |_|\_|   \___|(_)/_/\_\ "
    echo "                                                                     "
    echo "             [ Welcome to my Terminal Portfolio ]                    "                                
    echo ""
}

# Opening Line
PrintOpening() {
    echo " Type 'help' for a list of commands"
}

AwaitCommand() {
    read -p ">>> " command
    ExecuteCommand
}

# Execute the command
ExecuteCommand() {
    case $command in
        "")
        ExecuteEmptyCommand
        ;;
        "help")
        HelpCommand
        ;;
        "exit")
        ExitTerminal
        ;;
        "whois")
        Whois
        ;;
        "whoami")
        WhoamI
        ;;
        "social")
        Social
        ;;
        "projects")
        Projects
        ;;
        "clear")
        clear
        ;;
        *)
        CommandNotFound
        ;;
    esac
}

# My introduction
Whois() {
    echo " 😎 Hi! I'm SnSarvesh🔥 aka gdev-kingx. Welcome to my Portfolio"
    echo " 👀 I'm interested in Full Stack Development"
    echo " 🌱 I'm currently learning Next.js and Nuxt.js"
    echo " 💞️ I'm looking to collaborate on Web Development Projects"
    echo " 💬 Ask me about React Native, React, Vue, Javascript, Expo, Python"
    echo " ⚡ Fun fact: I love to sing"
}

# User introduction
WhoamI() {
    echo " Knock Knock! Who are you? 🤦‍♂️"
    echo " Let me know by typing your ${underline}Name${nounderline} and ${underline}Area of Interest${nounderline}"
    read -p ">>> " name
    read -p ">>> " aoi
    echo " Hi $name, I'm SnSarvesh🔥 aka gdev-kingx. Welcome to my Portfolio"
    echo " Your Area of Interest: $aoi, Sounds Interesting!"
}

# My socials
Social() {
    echo " Here are my social handles 🔗"
    echo ""
    echo " GitHub: https://www.github.com/gdev-kingx"
    echo " Twitter: https://www.x.com/SnSarveshR"
    echo " Instagram: https://www.instagram.com/gdev._king.x"
    echo " LinkedIn: https://www.linkedin.com/in/snsaru1578"
}

# List of commands
HelpCommand() {
    echo " ${underline}whois${nounderline}         Who is gdev-kingx? "
    echo " ${underline}whoami${nounderline}        Who are you? "
    echo " ${underline}social${nounderline}        Display socials "
    echo " ${underline}projects${nounderline}      View Coding projects "
    echo " ${underline}help${nounderline}          View a list of commands "
    echo " ${underline}clear${nounderline}         Clear the terminal "
    echo " ${underline}exit${nounderline}          Exit the terminal "
}

# Exit the terminal
ExitTerminal() {
    isActive=false
}

# if prompt is empty
ExecuteEmptyCommand() {
    echo " Please enter a command. Type 'help' for a list of commands"
}

# Command is invalid
CommandNotFound() {
    echo " Command '$command' not found. Type 'help' for a list of commands"
}

# List of projects
Projects() {
    echo " Here are some of my projects 🚀"
    echo ""
    echo " 1. Vibestyle"
    echo "    A unique sanity real-time editor enabled clothing website"
    echo "    Link: https://vibestyle.vercel.app"
    echo ""
    echo "    Deploy Status: ${underline}Deployed${nounderline}"
    echo ""
    echo " 2. Promptopia"
    echo "    An AI content generator for prompts"
    echo "    Link: https://promptopia.vercel.app"
    echo ""
    echo "    Deploy Status: ${underline}Pending${nounderline}"
    echo ""
    echo " 3. Space Invaders"
    echo "    Modern Space Invaders using Vanilla JS"
    echo "    Link: https://space-invaders-js-v2.vercel.app"
    echo ""
    echo "    Deploy Status: ${underline}Deployed${nounderline}"
    echo ""
    echo " 4. LiveDocs"
    echo "    Responsive real-time document editing platform with inline chat enabled"
    echo "    Link: https://livedocs-one.vercel.app"
    echo ""
    echo "    Deploy Status: ${underline}Deployed${nounderline}"
    echo ""
    echo " 5. Sonic Infinite Runner"
    echo "    A Sonic Themed infinite runner game using node.js and kaplay.js"
    echo "    Link: https://sonic-infinite-runner.vercel.app"
    echo ""
    echo "    Deploy Status: ${underline}Deployed${nounderline}"
}

Main