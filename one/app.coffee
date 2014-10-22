bg = new Layer
	x: 0
	y: 0
	width: 640
	height: 1136

bg.backgroundColor = "#000000"

ls = Framer.Importer.load "imported/Login_Screen_iOS"

ls['background'].opacity = 0
ls['background'].y = -15
ls['logo'].opacity = 0
ls['logo'].y = 400
ls['username_input'].opacity = 0
ls['username_input'].y = 600
ls['password_input'].opacity = 0
ls['password_input'].y = 700
ls['login_btn'].opacity = 0
ls['login_btn'].scale = 0.85
ls['no_account'].opacity = 0
ls['no_account'].x = 90

login = ls['login_btn']
main = ls['background']

ls['background'].animate
    properties:
        opacity: 1
        y: 0
    curve: "ease"

ls['logo'].animate
    properties:
        opacity: 1,
        y: 347
    curve: "spring(60, 7, 0)"
    delay: 1

ls['username_input'].animate
    properties:
        opacity: 1,
        y: 540
    curve: "spring(150, 16, 0)"
    delay: 1.7

ls['password_input'].animate
    properties:
        opacity: 1,
        y: 672
    curve: "spring(170, 14, 0)"
    delay: 1.85
    
ls['login_btn'].animate
    properties:
        opacity: 1,
        y: 804
        scale: 1
    curve: "ease"
    delay: 2
    time: 0.5
    
ls['no_account'].animate
    properties:
        opacity: 1,
        x: 129
    curve: "ease"
    delay: 2.4

login.on Events.Click, ->
	ls['background'].animate
	    properties:
	        y: -1000
	    curve: "ease"
	
	ls['logo'].animate
	    properties:
	        y: 540
	    curve: "ease"
	
	ls['username_input'].animate
	    properties:
	        y: -1000
	    curve: "ease"
	
	ls['password_input'].animate
	    properties:
	        y: -1000
	    curve: "ease"
	    
	ls['login_btn'].animate
	    properties:
	        y: -1000
	    curve: "ease"
	    
	ls['no_account'].animate
	    properties:
	        y: -1000
	    curve: "ease"