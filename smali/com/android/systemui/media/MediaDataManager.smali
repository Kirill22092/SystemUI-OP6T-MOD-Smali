.class public final Lcom/android/systemui/media/MediaDataManager;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaDataManager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDataManager.kt\ncom/android/systemui/media/MediaDataManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,603:1\n461#2:604\n446#2,6:605\n461#2:625\n446#2,6:626\n149#3:611\n150#3:614\n149#3:632\n150#3:635\n1591#4,2:612\n1591#4,2:615\n1591#4,2:617\n1591#4,2:619\n1591#4,2:621\n1591#4,2:623\n1591#4,2:633\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDataManager.kt\ncom/android/systemui/media/MediaDataManager\n*L\n183#1:604\n183#1,6:605\n568#1:625\n568#1,6:626\n184#1:611\n184#1:614\n569#1:632\n569#1:635\n184#1,2:612\n512#1,2:615\n532#1,2:617\n541#1,2:619\n544#1,2:621\n552#1,2:623\n569#1,2:633\n*E\n"
.end annotation


# instance fields
.field private final appChangeReceiver:Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final context:Landroid/content/Context;

.field private final foregroundExecutor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDataManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

.field private final mediaEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private useMediaResumption:Z

.field private final useQsMediaPlayer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;ZZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaControllerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/media/MediaTimeoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/media/MediaResumeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaControllerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaTimeoutListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaResumeListener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDataManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-boolean p9, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    iput-boolean p10, p0, Lcom/android/systemui/media/MediaDataManager;->useQsMediaPlayer:Z

    .line 102
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    .line 103
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 119
    new-instance p1, Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->appChangeReceiver:Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

    const-string p1, "MediaDataManager"

    .line 138
    invoke-virtual {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 139
    new-instance p1, Lcom/android/systemui/media/MediaDataManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaDataManager$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    invoke-virtual {p7, p1}, Lcom/android/systemui/media/MediaTimeoutListener;->setTimeoutCallback(Lkotlin/jvm/functions/Function2;)V

    .line 141
    invoke-virtual {p0, p7}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 143
    invoke-virtual {p8, p0}, Lcom/android/systemui/media/MediaResumeListener;->setManager(Lcom/android/systemui/media/MediaDataManager;)V

    .line 144
    invoke-virtual {p0, p8}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 146
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/android/systemui/media/MediaDataManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p3, p0, Lcom/android/systemui/media/MediaDataManager;->appChangeReceiver:Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p5, "UserHandle.ALL"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p1, p5, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 149
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    .line 151
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "package"

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->appChangeReceiver:Lcom/android/systemui/media/MediaDataManager$appChangeReceiver$1;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaControllerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/media/MediaTimeoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/media/MediaResumeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundExecutor"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaControllerFactory"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaTimeoutListener"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaResumeListener"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v10

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v11

    move-object v1, p0

    .line 115
    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/media/MediaDataManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;ZZ)V

    return-void
.end method

.method public static final synthetic access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$loadMediaDataInBg(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager;->loadMediaDataInBg(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadMediaDataInBgForResumption(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/media/MediaDataManager;->loadMediaDataInBgForResumption(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$removeAllForPackage(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaDataManager;->removeAllForPackage(Ljava/lang/String;)V

    return-void
.end method

.method private final computeBackgroundColor(Landroid/graphics/Bitmap;)I
    .locals 3

    if-eqz p1, :cond_0

    .line 475
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->generateArtworkPaletteBuilder(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    .line 476
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    const-string p1, "MediaNotificationProcess\u2026              .generate()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroidx/palette/graphics/Palette;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    const-string/jumbo p1, "swatch"

    .line 478
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 481
    fill-array-data p1, :array_0

    .line 482
    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 p0, 0x2

    .line 484
    aget v0, p1, p0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    aput v0, p1, v2

    .line 491
    :cond_2
    aget v0, p1, v2

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    aput v0, p1, v2

    const/high16 v0, 0x3e800000    # 0.25f

    aput v0, p1, p0

    .line 494
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final findExistingEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;
    .locals 3

    .line 499
    new-instance v0, Lcom/android/systemui/media/MediaAction;

    .line 500
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->lb_ic_play:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 502
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->controls_media_resume:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 499
    invoke-direct {v0, v1, p1, p0}, Lcom/android/systemui/media/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final loadBitmapFromUri(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 6

    .line 430
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->access$getART_URIS$p()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 431
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 433
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(uriString)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 435
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loaded art from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaDataManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    .line 450
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.resource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 460
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 462
    :try_start_0
    sget-object p1, Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;->INSTANCE:Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 466
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private final loadMediaData(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final loadMediaDataInBg(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.mediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/media/session/MediaSession$Token;

    .line 317
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v0, v13}, Lcom/android/systemui/media/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v0

    const-string v2, "mediaControllerFactory.create(token)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    const-string v2, "sbn.notification"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "android.media.metadata.ART"

    .line 326
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "android.media.metadata.ALBUM_ART"

    .line 328
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    .line 331
    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    .line 334
    invoke-virtual {v14}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    goto :goto_0

    .line 336
    :cond_3
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    :goto_0
    move-object v10, v4

    const/4 v4, 0x0

    if-eqz v10, :cond_6

    if-nez v3, :cond_6

    .line 342
    invoke-virtual {v10}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    invoke-virtual {v10}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    goto :goto_1

    .line 345
    :cond_4
    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v5, "artWorkIcon.loadDrawable(context)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 348
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 349
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 346
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 350
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 351
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v3, v4, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 352
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v3, v5

    goto :goto_2

    .line 343
    :cond_5
    :goto_1
    invoke-virtual {v10}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 356
    :cond_6
    :goto_2
    invoke-direct {v1, v3}, Lcom/android/systemui/media/MediaDataManager;->computeBackgroundColor(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 359
    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-static {v3, v14}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v2, "sbn.notification.smallIcon.loadDrawable(context)"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 367
    check-cast v2, Ljava/lang/CharSequence;

    if-nez v2, :cond_7

    const-string v2, "android.media.metadata.TITLE"

    .line 368
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 370
    :cond_7
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    .line 371
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 375
    :cond_8
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 376
    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    .line 377
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 381
    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 382
    iget-object v0, v14, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 383
    iget-object v2, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.compactActions"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_a

    .line 384
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move-object v12, v2

    .line 387
    iget-object v2, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    move-object/from16 v15, p2

    invoke-virtual {v15, v2}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sbn.getPackageContext(context)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_d

    .line 389
    array-length v3, v0

    :goto_4
    if-ge v4, v3, :cond_d

    move/from16 v16, v3

    aget-object v3, v0, v4

    .line 390
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v17

    if-nez v17, :cond_b

    move-object/from16 v17, v0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No icon for action "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaDataManager"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v18, v14

    goto :goto_6

    :cond_b
    move-object/from16 v17, v0

    .line 395
    iget-object v0, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 396
    new-instance v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$runnable$1;

    invoke-direct {v0, v3}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$runnable$1;-><init>(Landroid/app/Notification$Action;)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    .line 406
    :goto_5
    new-instance v15, Lcom/android/systemui/media/MediaAction;

    move-object/from16 v18, v14

    .line 407
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 409
    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 406
    invoke-direct {v15, v14, v0, v3}, Lcom/android/systemui/media/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    .line 410
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, p2

    move/from16 v3, v16

    move-object/from16 v0, v17

    move-object/from16 v14, v18

    goto :goto_4

    :cond_d
    move-object/from16 v18, v14

    .line 414
    iget-object v15, v1, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final loadMediaDataInBgForResumption(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 14

    move-object v1, p0

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "MediaDataManager"

    if-eqz v0, :cond_0

    const-string v0, "Description incomplete"

    .line 280
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move-object/from16 v3, p7

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding track for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from browser: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 294
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :cond_3
    move-object v7, v2

    if-eqz v0, :cond_4

    .line 298
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDataManager;->computeBackgroundColor(Landroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_1

    :cond_4
    const v0, -0xbbbbbc

    :goto_1
    move-object/from16 v11, p3

    move v5, v0

    .line 300
    invoke-direct {p0, v11}, Lcom/android/systemui/media/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;

    move-result-object v8

    .line 301
    iget-object v12, v1, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v13, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBgForResumption$1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p7

    move v3, p1

    move v4, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBgForResumption$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;IILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final removeAllForPackage(Ljava/lang/String;)V
    .locals 5

    .line 181
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 461
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 446
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    iget-object v2, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDataManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 24
    .param p2    # Landroid/media/MediaDescription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/media/session/MediaSession$Token;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    const-string v2, "desc"

    move-object/from16 v13, p2

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action"

    move-object/from16 v15, p3

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "token"

    move-object/from16 v14, p4

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appName"

    move-object/from16 v12, p5

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appIntent"

    move-object/from16 v11, p6

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v2, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->access$getLOADING$p()Lcom/android/systemui/media/MediaData;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const v22, 0x37bff

    const/16 v23, 0x0

    move-object/from16 v13, p7

    move-object/from16 v18, p3

    invoke-static/range {v2 .. v23}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v2

    .line 212
    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    iget-object v9, v1, Lcom/android/systemui/media/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;-><init>(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "listeners: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mediaEntries: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "useMediaResumption: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 513
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "key"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sbn"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-boolean v3, v0, Lcom/android/systemui/media/MediaDataManager;->useQsMediaPlayer:Z

    if-eqz v3, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/media/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sbn.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/media/MediaDataManager;->findExistingEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 167
    invoke-static {}, Lcom/android/systemui/media/MediaDataManagerKt;->access$getLOADING$p()Lcom/android/systemui/media/MediaData;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x7fbff

    const/16 v26, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v26}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v4

    .line 168
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "mediaEntries.remove(oldKey)!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/systemui/media/MediaData;

    .line 172
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 174
    :cond_2
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/MediaDataManager;->loadMediaData(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaDataManager;->onNotificationRemoved(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onNotificationRemoved(Ljava/lang/String;)V
    .locals 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 520
    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaData;

    .line 521
    iget-boolean v3, v0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    if-eqz v3, :cond_7

    const/16 v25, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, v25

    :goto_0
    if-eqz v3, :cond_7

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because resumable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDataManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-direct {v0, v3}, Lcom/android/systemui/media/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 525
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v26, 0x0

    .line 526
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x6b4ff

    const/16 v24, 0x0

    move-object v3, v2

    .line 525
    invoke-static/range {v3 .. v24}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 527
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v25

    :cond_1
    move-object/from16 v2, v25

    .line 528
    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v26, 0x1

    .line 530
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-eqz v26, :cond_3

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 533
    invoke-interface {v4, v2, v1, v3}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_1

    .line 1591
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 542
    invoke-interface {v5, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_2

    .line 1591
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 545
    invoke-interface {v1, v2, v2, v3}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_3

    :cond_5
    return-void

    .line 524
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v25

    :cond_7
    if-eqz v2, :cond_8

    .line 551
    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 553
    invoke-interface {v2, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public final setMediaResumptionEnabled(Z)V
    .locals 5

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 563
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaDataManager;->useMediaResumption:Z

    if-nez p1, :cond_4

    .line 567
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->listeners:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 568
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 461
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 446
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 568
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 448
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 570
    iget-object v2, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 572
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final setResumeAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaData;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/MediaData;->setResumeAction(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaData;->setHasCheckedForResume(Z)V

    :cond_0
    return-void
.end method

.method public final setTimedOut$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p2, p2, 0x1

    .line 265
    invoke-virtual {v0, p2}, Lcom/android/systemui/media/MediaData;->setActive(Z)V

    const-string p2, "it"

    .line 266
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p1, v0}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :cond_1
    return-void
.end method
