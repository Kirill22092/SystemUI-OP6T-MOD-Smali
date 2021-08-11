.class final Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->loadMediaDataInBg(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $actionIcons:Ljava/util/List;

.field final synthetic $actionsToShowCollapsed:Ljava/util/List;

.field final synthetic $app:Ljava/lang/String;

.field final synthetic $artWorkIcon:Landroid/graphics/drawable/Icon;

.field final synthetic $artist:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $bgColor:I

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $notif:Landroid/app/Notification;

.field final synthetic $oldKey:Ljava/lang/String;

.field final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic $smallIconDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic $song:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $token:Landroid/media/session/MediaSession$Token;

.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput p5, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$bgColor:I

    iput-object p6, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$app:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$smallIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p10, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    iput-object p11, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionIcons:Ljava/util/List;

    iput-object p12, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionsToShowCollapsed:Ljava/util/List;

    iput-object p13, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$token:Landroid/media/session/MediaSession$Token;

    iput-object p14, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$notif:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataManager;->access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataManager;->access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getHasCheckedForResume()Z

    move-result v1

    if-ne v1, v2, :cond_1

    move/from16 v21, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move/from16 v21, v1

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataManager;->access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v1

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v17, v2

    :goto_2
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v15, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$oldKey:Ljava/lang/String;

    new-instance v13, Lcom/android/systemui/media/MediaData;

    move-object v2, v13

    iget-object v3, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v3

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$bgColor:I

    iget-object v6, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$app:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$smallIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    iget-object v9, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    iget-object v11, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionIcons:Ljava/util/List;

    iget-object v12, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionsToShowCollapsed:Ljava/util/List;

    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v1

    move-object v1, v13

    move-object v13, v4

    move-object/from16 v16, v14

    const-string v14, "sbn.packageName"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v4, v16

    move-object/from16 v25, v4

    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$notif:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v26, v1

    move-object v1, v15

    move-object v15, v4

    const/16 v16, 0x0

    const/16 v19, 0x0

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    move-object/from16 v20, v0

    const/high16 v22, 0x10000

    const/16 v23, 0x0

    move-object/from16 v0, v25

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v23}, Lcom/android/systemui/media/MediaData;-><init>(IZILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method
