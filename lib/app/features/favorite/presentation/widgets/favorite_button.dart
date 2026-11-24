import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/features/favorite/presentation/controllers/fav_cubit/fav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.doctorId});
  final String doctorId;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FavCubit, FavState, (bool, bool)>(
      selector: (state) {
        final isFavorite = state.doctorsList.any((e) => e.id == doctorId);
        final isLoading = state.loadingDoctors.contains(doctorId);
        return (isFavorite, isLoading);
      },
      builder: (context, values) {
        // final (isFavorite, isLoading) = values;
        final isFavorite = values.$1;
        final isLoading = values.$2;
        return GestureDetector(
          onTap: () =>
              context.read<FavCubit>().toggleFavorite(doctorId: doctorId),
          child: isLoading
              ? const SizedBox(width: 25, height: 25)
              : Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? AppColors.fav : AppColors.secondary,
                  size: 25,
                ),
        );
      },
    );
  }
}
