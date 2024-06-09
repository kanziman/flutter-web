class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  final String? site;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.link,
    this.site,
  });
}

List<Project> projectList = [
  Project(
    name: 'Stock Info Web',
    description:
        '''- 금융투자협회 및 한국거래소에서 정보를 추출, 가공하여 국내시장 코스피/코스닥의 ADR/CREDIT/VALUATION 정보를 제공합니다.(chart/api)
- 국내 상장기업의 전자공시 정보를 바탕으로 per/pbr/psr/por 정보를 제공합니다.(chart/api)
간지봇 국내기업의 가장 최신 분기보고서(2023.3분기)를 바탕(RAG)으로 Chat GPT와 대화할 수 있습니다.
커뮤니티에 마크다운 형태로 글/댓글을 사용할 수 있습니다.''',
    image: 'assets/images/pj1.png',
    link: 'https://github.com/kanziman/kz-msa',
    site: 'https://kanzi.kr',
  ),
  Project(
    name: 'Telegram Message',
    description:
        'Airflow 와 Chat-GPT를 활용해 매시간 급등 종목의 기업개요 및 재무정보를 Telegram으로 실시간 전송할 수 있습니다.',
    image: 'assets/images/pj2.png',
    link: 'https://github.com/kanziman/airflow-message',
  ),
  Project(
      name: 'Japanese Learning App',
      description:
          'Interactive Learning Tools: Dive into learning with interactive flashcards that reinforce memory retention and enable quick revision of vocabulary and phrases. Our comprehensive quizzes are crafted to test your knowledge and help consolidate your learning, providing feedback to speed up your progress.',
      image: 'assets/images/pj3.png',
      link: 'https://github.com/kanziman/naruhodo',
      site: 'https://apps.apple.com/us/app/naruhodo/id6502181176'),
];

