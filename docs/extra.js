$(document).ready(function(){
    var git = 'http://github.com/pyzahl/Gxsm4/edit/master/docs'
    var t1 = window.location.pathname
    var url = null
    if (t1=='/'){
        url = git + '/index.md'
    }else{
        url = git+t1.substr(0, t1.length-1)+'.md'
    }   
    a_git = $('[href="https://github.com/pyzahl/Gxsm4/"]')
    a_git.attr('href', url).attr('target', '_blank')
})

