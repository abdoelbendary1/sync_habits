import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart'; // 👈 عشان الـ GetIt يفهمه تلقائياً

// الروابط التلاتة (مهمة جداً والـ ترتيب بيفرق)
part 'partnership_sync_event.dart';
part 'partnership_sync_state.dart';
part 'partnership_sync_bloc.freezed.dart'; // ملف الفريزد اللي هيتولد

@injectable // 👈 دي بتخلي الـ Injectable يضيف البلوك في الـ Dependency Injection لوحده
class PartnershipSyncBloc extends Bloc<PartnershipSyncEvent, PartnershipSyncState> {
  
  // 1. الـ Constructor: بنديله الـ Initial State
  PartnershipSyncBloc() : super(const PartnershipSyncState.initial()) {
    
    // 2. هنا بنربط كل Event بالدالة (Method) اللي هتتنفذ بسببه
    on<PartnershipSyncEventStarted>(_onStarted);
    on<PartnershipSyncEventRefreshRequested>(_onRefreshRequested);
  } // 👈 القوس ده بيقفل الـ Constructor بالكامل!

  // 3. الدوال (Methods) اللي بتنفذ الـ Logic
  Future<void> _onStarted(
    PartnershipSyncEventStarted event, 
    Emitter<PartnershipSyncState> emit,
  ) async {
    emit(const PartnershipSyncState.loading()); // اقلب لودينج
    try {
      // شغل السيرفر هنا...
      emit(const PartnershipSyncState.success(myProgress: 0.65, partnerProgress: 0.40, partnerName: 'Youssef'));
    } catch (e) {
      emit(PartnershipSyncState.failure(e.toString()));
    }
  }

  Future<void> _onRefreshRequested(
    PartnershipSyncEventRefreshRequested event, 
    Emitter<PartnershipSyncState> emit,
  ) async {
    // الـ Logic بتاع الريفريش...
  }
}