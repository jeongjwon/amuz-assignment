import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/services/portfolio_service.dart';
import 'package:amuz_assignment/widgets/portfolio_list.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchTerm = '';

  Future<List<Portfolio>>? futurePortfolios;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              SizedBox(
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchTerm = value;
                    });
                  },
                  onSubmitted: (value) {
                    setState(() {
                      futurePortfolios =
                          PortfolioService.searchPortfolio(value);
                    });
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[850],
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: primaryColor, width: 2),
                      ),
                      hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey.shade500),
                      hintText: "포트폴리오를 검색해보세요."),
                ),
              ),
              // const SizedBox(height: 20),

              FutureBuilder<List<Portfolio>>(
                future: futurePortfolios,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.normal,
                              fontSize: textSize,
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text: '총 ',
                              ),
                              TextSpan(
                                text: '${snapshot.data!.length}개',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const TextSpan(
                                text: ' 의 프로젝트가 검색되었습니다.',
                              ),
                            ],
                          ),
                        ),
                        PortfolioList(portfolios: snapshot.data!),
                      ],
                    );
                  } else {
                    return const Text('');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
