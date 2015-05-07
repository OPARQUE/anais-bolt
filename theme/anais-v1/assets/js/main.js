$(function () {
    //$('[data-toggle="popover"]').popover()
    
    $('.popover-busca').popover({
        placement: 'top',
        content: 'Pesquise por título, palavras-chave, autor ou qualquer termo referente ao resumo do artigo',
        title: 'Digite sua pesquisa',
        trigger: 'focus'
    });
    
});