<vegetable>
    <div class="row">
        <div class="col-md-2">
            <div id="nav">
                <div class="list-group">
                    <a href="#vegetables/carrot" class="list-group-item">にんじん</a>
                    <a href="#vegetables/pumpkin" class="list-group-item">かぼちゃ</a>
                    <a href="#vegetables/lettuce" class="list-group-item">れたす</a>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <div id="page">
                <h1>やさいいんでっくす</h1>
            </div>
        </div>
    </div>
    <script>
        this.on('mount' , () => {
			console.log('vegetable-index mount');

			subRoute('vegetables/carrot', () => {
				console.log('subRoute carrot');
				riot.mount('#page', 'carrot', { name: "にんじん" });
			});
			subRoute('vegetables/pumpkin', () => {
				console.log('subRoute pumpkin');
				riot.mount('#page', 'pumpkin', { name: "かぼちゃ" });
			});
			subRoute('vegetables/lettuce', () => {
				console.log('subRoute lettuce');
				riot.mount('#page', 'lettuce', { name: "れたす" });
			});
		});

        this.on('unmount', () => {
            console.log('vegetable-index unmount');
        });
    </script>
    <style>
        h1 {
            margin-top: 0;
        }
    </style>
</vegetable>