class ArticlesModel {
	String? author;
	String? title;
	String? description;
	String? url;
	String? urlToImage;
	String? publishedAt;
	String? content;

	ArticlesModel({
		this.author, 
		this.title, 
		this.description, 
		this.url, 
		this.urlToImage, 
		this.publishedAt, 
		this.content, 
	});

	factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
				author: json['author'] as String?,
				title: json['title'] as String?,
				description: json['description'] as String?,
				url: json['url'] as String?,
				urlToImage: json['urlToImage'] as String?,
				publishedAt: json['publishedAt'] as String?,
				content: json['content'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'author': author,
				'title': title,
				'description': description,
				'url': url,
				'urlToImage': urlToImage,
				'publishedAt': publishedAt,
				'content': content,
			};
}
