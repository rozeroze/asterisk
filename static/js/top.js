const ArticleList = articles => {
    return articles.articles.map(article => <Article article={article} />);
};

const Article = article => {
    return <div class="cm-col-md-4">
               <div class="cm-card">
                   <div class="cm-card-header">
                       <a href={'/article/' + article.article.id + '.md'}>{ article.article.title }</a>
                   </div>
                   <div class="cm-card-body">
                       <p>{ article.article.description }</p>
                   </div>
               </div>
           </div>;
}

(() => {
    fetch('/data/articles.json')
    .then( response => response.json() )
    .then( json => {
        ReactDOM.render(
            <ArticleList articles={ json.list } />,
            document.getElementById('newest6')
        );
    });
})()

