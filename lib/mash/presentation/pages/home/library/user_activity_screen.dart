
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/user_activity_post_card.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:image_picker/image_picker.dart';


class UserActivityScreen extends StatelessWidget {
  const UserActivityScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotoBloc(),
    child:
    Scaffold(
      appBar: commonAppbar(title: AppStrings.userActivity),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             profileAndTextField(),
            spacer20,
            addPhotoAndPostButtons(context),
            spacer20,
            divider(),
            // SelectedPhotos(),
            posts()
          ],
        ),
      ),
    )
    );
  }

  posts() {

    List<String> images = ['https://placehold.co/800@3x.png','https://placehold.co/600x400.png','https://placehold.co/800@3x.png'];
    return Expanded(
        child: ListView.separated(
          separatorBuilder: (context,index){
            return divider();
          },
            itemCount: 3,
            itemBuilder: (context,index){
          return  PostCard(profileImage: images[index], name: 'REENA GEORGE P', postedTime: "5 days ago", postImage: images[index], description: 'A Warm Welocme');
        }));
  }

  divider() {
    return const Divider(
      thickness: 5,
      color: Colors.grey,
    );
  }
}

profileAndTextField(){
  return  Container(
padding: const EdgeInsets.symmetric(horizontal: 15),
    height: SizeConfig.height(150),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.primaryColor,
          child:  const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: CachedNetworkImageProvider('https://placehold.co/600x400.png'),
          ),
        ),
        spacerWidth20,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Text('REENA GEORGE P',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),) ,
              const Row(
                children: [
                  Text('Public view',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  spacerWidth6,
                  Icon(Icons.language,size: 13,)
                ],
              ) ,
              spacer4,
              Expanded(
                flex:3,
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Write something here...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
              ),
    
            ],
          ),
        ),
      ],
    ),
  );
}

addPhotoAndPostButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            final picker = ImagePicker();
            picker.pickImage(source: ImageSource.gallery).then((pickedFile) {
              if (pickedFile != null) {
                context.read<PhotoBloc>().add(PhotoAdded(File(pickedFile.path)));
              }
            });
          },
          icon: const Icon(Icons.photo_camera_back_rounded),
          label: const Text('ADD PHOTO'),
        ),
        spacerWidth20,
        ElevatedButton(
          onPressed: () {
          },
          child: const Text('POST'),
        ),
      ],
    ),
  );
}

class SelectedPhotos extends StatelessWidget {
  const SelectedPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, List<File>>(
      builder: (context, selectedPhotos) {
        return SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: selectedPhotos.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.file(
                        selectedPhotos[index],
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        context.read<PhotoBloc>().add(PhotoRemoved(index));
                      },
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.black.withOpacity(0.6),
                        child: const Icon(
                          Icons.close,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class PhotoBloc extends Bloc<PhotoEvent, List<File>> {
  PhotoBloc() : super([]);

  Stream<List<File>> mapEventToState(PhotoEvent event) async* {
    if (event is PhotoAdded) {
      yield [...state, event.photo];
    } else if (event is PhotoRemoved) {
      yield List.from(state)..removeAt(event.index);
    }
  }
}

abstract class PhotoEvent {}

class PhotoAdded extends PhotoEvent {
  final File photo;

  PhotoAdded(this.photo);
}

class PhotoRemoved extends PhotoEvent {
  final int index;

  PhotoRemoved(this.index);
}