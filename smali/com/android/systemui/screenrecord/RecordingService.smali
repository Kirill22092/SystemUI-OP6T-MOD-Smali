.class public Lcom/android/systemui/screenrecord/RecordingService;
.super Landroid/app/Service;
.source "RecordingService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field private final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private final mLongExecutor:Ljava/util/concurrent/Executor;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mOriginalShowTaps:Z

.field private mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

.field private mShowTaps:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Landroid/app/NotificationManager;Lcom/android/systemui/settings/CurrentUserContextTracker;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 91
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 92
    iput-object p4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    iput-object p5, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    return-void
.end method

.method private static getDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.DELETE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_path"

    .line 414
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected static getNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_path"

    .line 409
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStartIntent(Landroid/content/Context;IIZ)Landroid/content/Intent;
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.START"

    .line 109
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_resultCode"

    .line 110
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_useAudio"

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_showTaps"

    .line 112
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.screenrecord.STOP"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$saveRecording$0(Landroid/os/UserHandle;)V
    .locals 6

    const-string v0, "RecordingService"

    const/16 v1, 0x10b3

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "saving recording"

    .line 366
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/screenrecord/RecordingService;->createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;

    move-result-object v3

    .line 368
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v4}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x10b1

    invoke-virtual {v4, v2, v5, v3, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 373
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error saving screen recording: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget v0, Lcom/android/systemui/R$string;->screenrecord_delete_error:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 377
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 378
    throw v0
.end method

.method private saveRecording(I)V
    .locals 4

    .line 360
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 361
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createProcessingNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10b3

    .line 361
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$VCwgNNzpq2HdyNZyJT8KtYGVm5w;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$VCwgNNzpq2HdyNZyJT8KtYGVm5w;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTapsVisible(Z)V
    .locals 1

    .line 384
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_touches"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startRecording()V
    .locals 3

    const/4 v0, 0x1

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->start()V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createRecordingNotification()V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 230
    sget v2, Lcom/android/systemui/R$string;->screenrecord_start_error:I

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    :goto_0
    return-void
.end method

.method private stopRecording(I)V
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->setTapsVisible(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->end()V

    .line 352
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->saveRecording(I)V

    goto :goto_0

    :cond_0
    const-string p1, "RecordingService"

    const-string/jumbo v0, "stopRecording called, but recorder was null"

    .line 354
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    return-void
.end method


# virtual methods
.method protected createProcessingNotification()Landroid/app/Notification;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 275
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v1, v2, :cond_0

    .line 277
    sget v1, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_only:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_0
    sget v1, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_and_audio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 281
    sget v3, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 282
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.substName"

    .line 281
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_record"

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->screenrecord_background_processing_label:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 288
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 289
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method protected createRecordingNotification()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/app/NotificationChannel;

    sget v2, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 243
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_record"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 245
    sget v2, Lcom/android/systemui/R$string;->screenrecord_channel_description:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 246
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 247
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 250
    sget v4, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 251
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.substName"

    .line 250
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v4, v5, :cond_0

    .line 254
    sget v4, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_only:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    sget v4, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_and_audio:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 258
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 259
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 260
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$string;->screenrecord_stop_text:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$color;->GM2_red_700:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    .line 267
    invoke-static {p0, v2, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 266
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x10b2

    .line 270
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method protected createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    invoke-virtual {p1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10000001

    .line 297
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video/mp4"

    .line 298
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 300
    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v3, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 301
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 302
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_share_label:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/systemui/screenrecord/RecordingService;->getShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x2

    const/high16 v7, 0xc000000

    .line 303
    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 308
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 310
    new-instance v3, Landroid/app/Notification$Action$Builder;

    sget v4, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 311
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 312
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$string;->screenrecord_delete_label:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    invoke-static {p0, v6, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 318
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 320
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 322
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.substName"

    .line 321
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "screen_record"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v5, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 325
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 326
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/systemui/R$string;->screenrecord_save_message:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/high16 v5, 0x4000000

    .line 327
    invoke-static {p0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 333
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 335
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 338
    invoke-virtual {p1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 341
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 343
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method protected getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    return-object p0
.end method

.method public synthetic lambda$saveRecording$0$RecordingService(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->lambda$saveRecording$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 212
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Media recorder info: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecordingService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/screenrecord/RecordingService;->onStartCommand(Landroid/content/Intent;II)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 124
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 125
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_1

    :sswitch_1
    const-string v3, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, p2

    goto :goto_1

    :sswitch_2
    const-string v3, "com.android.systemui.screenrecord.DELETE"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_3
    const-string v3, "com.android.systemui.screenrecord.START"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :sswitch_4
    const-string v3, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v7

    :goto_1
    if-eqz v3, :cond_7

    if-eq v3, v9, :cond_4

    if-eq v3, p2, :cond_4

    const/16 p2, 0x10b1

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    const-string v0, "extra_path"

    const/4 v4, 0x0

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    goto/16 :goto_3

    .line 186
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 190
    invoke-virtual {p3, p1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    sget p3, Lcom/android/systemui/R$string;->screenrecord_delete_description:I

    invoke-static {p0, p3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    .line 195
    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4, p2, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deleted recording "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 168
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/mp4"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    .line 172
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->screenrecord_share_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    iget-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p3, v4, p2, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 181
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 182
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 150
    :cond_4
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 151
    iget-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_NOTIFICATION:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_2

    .line 153
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_QS_TILE:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    const-string p2, "android.intent.extra.user_handle"

    .line 157
    invoke-virtual {p1, p2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v7, :cond_6

    .line 159
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 161
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifying for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->stopRecording(I)V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x10b2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_3

    .line 128
    :cond_7
    invoke-static {}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-result-object p2

    const-string p3, "extra_useAudio"

    invoke-virtual {p1, p3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "recording with audio source"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "extra_showTaps"

    .line 130
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    .line 133
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "show_touches"

    .line 132
    invoke-static {p1, p2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8

    move v8, v9

    :cond_8
    iput-boolean v8, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    .line 136
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->setTapsVisible(Z)V

    .line 138
    new-instance p1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    iget-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    .line 139
    invoke-virtual {p2}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-direct {p1, p2, v0, p3, p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;-><init>(Landroid/content/Context;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Landroid/media/MediaRecorder$OnInfoListener;)V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->startRecording()V

    :goto_3
    return v9

    :sswitch_data_0
    .sparse-switch
        -0x649efbd3 -> :sswitch_4
        -0x64998750 -> :sswitch_3
        -0x48fea503 -> :sswitch_2
        -0x1c04f22c -> :sswitch_1
        -0x1130027a -> :sswitch_0
    .end sparse-switch
.end method
