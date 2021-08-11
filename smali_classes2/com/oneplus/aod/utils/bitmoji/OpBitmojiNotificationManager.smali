.class public final Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;
.super Ljava/lang/Object;
.source "OpBitmojiNotificationManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;,
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpBitmojiNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpBitmojiNotificationManager.kt\ncom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager\n*L\n1#1,260:1\n*E\n"
.end annotation


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.oneplus.aod.bitmoji.cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ACTION_READY:Ljava/lang/String; = "com.oneplus.aod.bitmoji.ready"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ACTION_REDIRECT:Ljava/lang/String; = "com.oneplus.aod.bitmoji.redirect"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BITMOJI_RECEIVER_ACTION:Ljava/lang/String; = "com.bitstrips.imoji.provider.action.STATUS_CHANGE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

.field private static final KEY_NOTIFICATION_TAG:Ljava/lang/String; = "notificationTag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SHOWN_READY_NOTIFICATION:Ljava/lang/String; = "shown_ready"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NOTI_DOWNLOAD_ID:I = 0x2

.field private static final NOTI_READY_ID:I = 0x0

.field private static final NOTI_REVOKE_ID:I = 0x1

.field private static final NOTI_STICKER_UPDATE_ID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OpBitmojiNotificationManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCancelIntent:Landroid/content/Intent;

.field private mDownloadNotificationListener:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

.field private mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

.field private mNm:Landroid/app/NotificationManager;

.field private final mReceiver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mReceiver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_CANCEL:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mCancelIntent:Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->BITMOJI_RECEIVER_ACTION:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_CANCEL:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_READY:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_REDIRECT:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mReceiver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$checkIfNeedRecoverDownload(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->checkIfNeedRecoverDownload()V

    return-void
.end method

.method public static final synthetic access$getACTION_CANCEL$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACTION_READY$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_READY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACTION_REDIRECT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_REDIRECT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBITMOJI_RECEIVER_ACTION$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->BITMOJI_RECEIVER_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_NOTIFICATION_TAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->KEY_NOTIFICATION_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMDownloadNotificationListener$p(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mDownloadNotificationListener:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

    return-object p0
.end method

.method public static final synthetic access$getMNm$p(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static final synthetic access$getNOTI_DOWNLOAD_ID$cp()I
    .locals 1

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_DOWNLOAD_ID:I

    return v0
.end method

.method public static final synthetic access$getNOTI_READY_ID$cp()I
    .locals 1

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_READY_ID:I

    return v0
.end method

.method public static final synthetic access$getNOTI_REVOKE_ID$cp()I
    .locals 1

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_REVOKE_ID:I

    return v0
.end method

.method public static final synthetic access$getNOTI_STICKER_UPDATE_ID$cp()I
    .locals 1

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_STICKER_UPDATE_ID:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$removeNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->removeNotification(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$updateReadyNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateReadyNotification()V

    return-void
.end method

.method public static final synthetic access$updateRevokeNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateRevokeNotification()V

    return-void
.end method

.method private final checkIfNeedRecoverDownload()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/aod/OpAodUtils;->getCurrentAodClockStyle(Landroid/content/Context;I)I

    move-result p0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    const-string v1, "recover after connect"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->startDownloading(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final makeNotification(II)Landroid/app/Notification$Builder;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$drawable;->ic_bitmoji_noti_icon:I

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p2, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final removeNotification(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final updateNotificationInner(III)V
    .locals 3

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_READY_ID:I

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_READY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->ACTION_REDIRECT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->KEY_NOTIFICATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->makeNotification(II)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p3, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    if-eqz p0, :cond_1

    sget-object p3, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private final updateReadyNotification()V
    .locals 3

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_READY_ID:I

    sget v1, Lcom/android/systemui/R$string;->op_bitmoji_ready_to_use:I

    sget v2, Lcom/android/systemui/R$string;->op_bitmoji_ready_to_use_go_check:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateNotificationInner(III)V

    return-void
.end method

.method private final updateRevokeNotification()V
    .locals 3

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_REVOKE_ID:I

    sget v1, Lcom/android/systemui/R$string;->op_bitmoji_not_working_normally:I

    sget v2, Lcom/android/systemui/R$string;->op_bitmoji_connect_to_resume:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateNotificationInner(III)V

    return-void
.end method


# virtual methods
.method public final checkNeedToShowReadyNotification()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    const-string v1, "bitmoji_info_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->KEY_SHOWN_READY_NOTIFICATION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateReadyNotification()V

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logNotificationReadyShownEvent()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->KEY_SHOWN_READY_NOTIFICATION:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final clearShowReadyNotificationFlag()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->KEY_SHOWN_READY_NOTIFICATION:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final findNotificationInStatusBar(Ljava/lang/String;I)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    array-length v2, p0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    if-nez v2, :cond_5

    array-length v2, p0

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return v0
.end method

.method public final removeStickerUpdateNotification()V
    .locals 2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    sget v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_STICKER_UPDATE_ID:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->removeNotification(Ljava/lang/String;I)V

    return-void
.end method

.method public final setDownloadInfo(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;)V
    .locals 1
    .param p1    # Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mDownloadNotificationListener:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

    return-void
.end method

.method public final updateDownloadNotification()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->getTotalCount()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    sget v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_DOWNLOAD_ID:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->removeNotification(Ljava/lang/String;I)V

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    const-string v0, "download totalCount empty"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->getRunningTaskCount()I

    move-result v0

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDownloadNotification: totalCount= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", runningCount= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v2, Lcom/android/systemui/R$string;->op_bitmoji_aod_download_stickers_title:I

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->makeNotification(II)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    if-ltz v1, :cond_3

    if-lez v0, :cond_3

    sub-int v0, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mCancelIntent:Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-static {v1, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    if-eqz p0, :cond_5

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    sget v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_DOWNLOAD_ID:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    const-string v1, "download completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->mNm:Landroid/app/NotificationManager;

    if-eqz p0, :cond_5

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->TAG:Ljava/lang/String;

    sget v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_DOWNLOAD_ID:I

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final updateStickerUpdateNotification()V
    .locals 3

    sget v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->NOTI_STICKER_UPDATE_ID:I

    sget v1, Lcom/android/systemui/R$string;->op_bitmoji_sticker_update_title:I

    sget v2, Lcom/android/systemui/R$string;->op_bitmoji_sticker_update_msg:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateNotificationInner(III)V

    return-void
.end method
