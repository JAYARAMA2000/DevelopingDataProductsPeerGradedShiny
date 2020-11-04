# loading libraries jhs gdkjsbc shcljhsg cjhgJHD JHbl
library(shiny)
library(datasets)

mpgDatavariable <- mtcars
mpgDatavariable$am <- factor(mpgDatavariable$am, labels = c("Automatic", "Manual"))
shinyServer(function(input, output) {
    formulaTextvariable <- reactive({
        paste("mpg ~", input$variable)
    })
    formulaTextPointvariable <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    fitvariable <- reactive({
        lm(as.formula(formulaTextPointvariable()), data=mpgDatavariable)
    })
    output$caption <- renderText({
        formulaTextvariable()
    })
    output$mpgBoxPlot <- renderPlot({
        boxplot(as.formula(formulaTextvariable()), 
                data = mpgDatavariable,
                outline = input$outliers)
    })
    output$fitvariable <- renderPrint({
        summary(fitvariable())
    })
   
    output$mpgPlot <- renderPlot({
        with(mpgDatavariable, {
            plot(as.formula(formulaTextPointvariable()))
            abline(fitvariable(), col=2)
        })
    })
    
})
#hg fhgj fgdhgf dmfnbdbdjhfg jkfb bfkjgfj gfb bfjdhbfjdhk fjbdnmbdfbkjha dbnmsbdavbjvkay db mbv fvfhgvjhflahhfb
#nbf jhd dfjgf dfn f djkf CN bnbkjhsa bmn bdv,jhmd, hd hl JKCHKFJEHFJK bfmnb nDBJK H.ljieuie f,dbd jhfgsdyjk gFA, MBVJHFBVJGKAJNMVBJHD
#jh vjvm,mjvhjfghuf jfkahgfg fjh,bfbvjhf jvhfvakjkjdjdjkldjkjd
#jhgj hlkhguy lkhl iji hjl iuih gygkjhklkhgffkkj.,nhklhhli
#hbjhajhbshd  jhsjw jhsb hbxjshb xmmx sbxmzillsudu sxmbsxmnzbx mzm,XJid uisx,sxjh skjhjs s,xnzxbzbx zxmnbz xbzbx 
#jhg jhg sjsmnxmbnzbxnbznxvBNZ XNzxvz xnv
#g jhxjhs bxjhsjhkg sxxnbvxnsvxhgsk xbnx znbxznbxnvxjhsgyis xjxbmbx mzbxbxjhgscgsuyc
#hgsd jhsmb shkjhg bnxsnxbnbzxzmnxbkjshdiug s
#jh gsjhSG chsg cjhcj bxcjbxncb nxcb nbxjkc jCHLhcdu XHCjxh k egd kJHSJCH LsckJK CJHLC Jh cjH
#jhgksjdkjhelu eidhkljedh kjhdkljshkjdhlsk
#JHKJKj hjhk ejhgf jh,nmcbdjchdc hdcn cjhc ljcjkch kjc mx,bc bnmc bmcb

#hkb sjisuydiou x,znxmnzm,bxmcb ckjgxUI DSUypOI JLKXJNKZ NXB CNMXB McnbbC 
#mkhjhjsdlh dkssk jhkhl kh ,jdh s,nSMNjkh lshlsuo HC
#kjhjhds kdnk, .l>Sjdiosuji shjkssj csckjs cljbghcg dvcmdncdm,clui.codiycuidc
#kjldh ckjhliuhioal m,.n ,mncjkhvdg <XCjknx mcbncnmgvjkydgk jccnxnmb mcbldco iducohicyd ckjhcj cjnxmnzc,mc
#kjshd jksh,xkuuichuid c,c,mnxbc ,mxb c