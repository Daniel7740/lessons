part of '../main_screen.dart';

class ListOfUsers extends StatelessWidget {
  const ListOfUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                'Данные ещё не загруженны, нажмите на кнопку "Загрузить", чтобы получить данные.',
                style: AppTextStyles.lobster20w200,
              ),
            ),
          );
        }
        if (state is UserLoadingState) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.colorBF3012,
            ),
          );
        }

        if (state is UserSuccessState) {
          return ListView.separated(
            physics: const ClampingScrollPhysics(),
            // physics: const BouncingScrollPhysics(),
            itemCount: state.successUser.length,
            itemBuilder: (context, index) => SizedBox(
              child: ListTile(
                leading: RichText(
                  text: TextSpan(
                    text: 'ID: ',
                    style: AppTextStyles.lobster18w400
                        .copyWith(color: AppColors.colorBF3012),
                    children: [
                      TextSpan(
                          text: state.successUser[index].id.toString(),
                          style: AppTextStyles.lobster18w100),
                    ],
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Имя: ',
                        style: AppTextStyles.lobster18w400
                            .copyWith(color: AppColors.colorBF3012),
                        children: [
                          TextSpan(
                              text: state.successUser[index].name.toString(),
                              style: AppTextStyles.lobster18w100),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'E-Mail: ',
                        style: AppTextStyles.lobster18w400
                            .copyWith(color: AppColors.colorBF3012),
                        children: [
                          TextSpan(
                              text: state.successUser[index].eMail.toString(),
                              style: AppTextStyles.lobster18w100),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Телефон: ',
                        style: AppTextStyles.lobster18w400
                            .copyWith(color: AppColors.colorBF3012),
                        children: [
                          TextSpan(
                              text: state.successUser[index].phone.toString(),
                              style: AppTextStyles.lobster18w100),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: AppColors.color4B493D);
            },
          );
        }
        if (state is UserEmptyState) {
          return const Center(
            child: Text('Ошибка, данные не загружены!'),
          );
        }
        return CircularProgressIndicator(
          color: AppColors.colorBF3012,
        );
      },
    );
  }
}
