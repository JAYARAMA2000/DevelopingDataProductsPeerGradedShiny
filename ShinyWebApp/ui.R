library(shiny)

shinyUI(
    navbarPage("JayaRamaShinnyApp",
               tabPanel("Analhgjysis",
                        fluidPage(
                            titlePanel("variablerelationShip HG G FLSUI U "),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("Number of cylinders" = "cyl",
                                                  "Displacement (cu.in.)" = "disp",
                                                  "Gross horsepower" = "hp",
                                                  "Rear axle ratio" = "drat",
                                                  "Weight (lb/1000)" = "wt",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "Number of forward gears" = "gear",
                                                  "Number of carburetors" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("capthvhkjj kion")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("some thing about data set nb jh",
                        
                        h3("This is a peer graded assignment for developing data products course coursera"),
                        helpText("Ysou worxssk focr Mosmndbtord Tresdsdnd, sda ms sjdhagsdsazine abosdsut thase automsdsadobile indusdasdtry Looksmdn,adsing at a data set of a cosdasllection dasof caadrs,asd thmsndg jhey arsm,dhn e intereNDBMJH dksted in explorMSNDG JKing the relaSNMDG tionship",
                                 "betwhkdjhdgkeen a sems,djh kt of varidmng jhdables and milsdases per galsadlon (MabnvsdasPG) (outcodasme). Thsndbvkey aresdas particSMDNH, JKularly intedarested in the fdasdollowing two questions: Is an automatiaxaJHc SMJHor manasmdjhual transmissasmdnbion betsmdnhter fmfhor MJMNPG. QuantSMDNBify tSDhe MDPG differenceSAD betSDNMBween autoDmatic anDd maADnual transsdhgkSJmissions"),
                        h3("A note of Importance"),
                        p("this is a datadasd with 11 varabes"),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("Mosmjhre Dascmbta Detnhgail",
                        h2("Motsm,jh or Trsmjh end Casm,jh r Romjah jad Tesmasj ts"),
                        hr(),
                        h3("Descripsm,nbtion"),
                        helpText("The dashb gjta w bvas extrahg jhcted frmjh gkjom thjh,gk je 19jhg k74 Mjh gkuyotor Tremjhgnd US magazine,",
                                 " and compring jhj,hg jhses fuel consumpbvjghtion and 10 asmnhg jhpects of automobmnhgjhkgile design and performance",
                                 " fohg jhgr 32 autoljh jmobil,mjh es (1973-74 mojhg jgkdels)."),
                        h3("Formnmhg at"),
                        p("A damjhg jta fra ng jhme with 32 observhmgm jhgations on 11 nb gjh variables."),
                        
                        p("  [, 1]   mpg         Miles/(US) gallon"),
                        p("  [, 2]	 cyl	 Nummh gber of cymhg jlinders"),
                        p("  [, 3]	 disp	 Displamnhgkcement (cu.in.)"),
                        p("  [, 4]	 hp	 Groshk js hormjhg kjsepower"),
                        p("  [, 5]	 drnhgkhat	 Rear axle ratio"),
                        p("  [, 6]	 wt	 Wnbnh eight (lb/1mh,g000)"),
                        p("  [, 7]	 qsec	 1/4 mile time"),
                        p("  [, 8]	 vs	 V/S"),
                        p("  [, 9]	 am	 Transmissmhngjion (0 = automatic, 1 = manual)"),
                        p("  [,10]	 gear	 Number of  nbb jhforward gears"),
                        p("  [,11]	 carb	 Number of nmvjh kvcarburetors"),
                        
                        h3("Somhgkjurce"),
                        
                        p("Henderson and Vm,g kjhgelleman (1981), Bui nbjhlding multiple regressinb jhgon models interafmnd bctively. Biometrics, 37, 391-411.")
               ),
               tabPanel("Do you want to Go back to my Github repository",
                        a("https://github.com/JAYARAMA2000/DevelopingDataProductsPeerGradedShiny"),
                        hr(),
                        h4("hope you saw the shinny web application"),
                        h4("JAYARAMA2000 ")
               )
    )
)