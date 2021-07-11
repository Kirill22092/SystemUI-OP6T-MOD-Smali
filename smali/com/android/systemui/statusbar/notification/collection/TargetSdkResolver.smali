.class public final Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;
.super Ljava/lang/Object;
.source "TargetSdkResolver.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->context:Landroid/content/Context;

    const-string p1, "TargetSdkResolver"

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$resolveNotificationSdk(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;Landroid/service/notification/StatusBarNotification;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->resolveNotificationSdk(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    return p0
.end method

.method private final resolveNotificationSdk(Landroid/service/notification/StatusBarNotification;)I
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "sbn.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 47
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed looking up ApplicationInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method


# virtual methods
.method public final initialize(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method
