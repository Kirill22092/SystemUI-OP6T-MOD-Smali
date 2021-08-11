.class public final Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;
.super Ljava/lang/Object;
.source "PeopleHubNotificationListener.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/people/DataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/notification/people/DataSource<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeopleHubNotificationListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeopleHubNotificationListener.kt\ncom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,326:1\n673#2:327\n746#2,2:328\n*E\n*S KotlinDebug\n*F\n+ 1 PeopleHubNotificationListener.kt\ncom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl\n*L\n204#1:327\n204#1,2:328\n*E\n"
.end annotation


# instance fields
.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private final dataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;

.field private final iconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private final notifLockscreenUserMgr:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private final peopleHubManagerForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field private final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/UserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/pm/LauncherApps;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/pm/PackageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/NotificationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notificationEntryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extractor"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "userManager"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "launcherApps"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "packageManager"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "notificationListener"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bgExecutor"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mainExecutor"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "notifLockscreenUserMgr"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "peopleNotificationIdentifier"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->extractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->userManager:Landroid/os/UserManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->notifLockscreenUserMgr:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->dataListeners:Ljava/util/List;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->peopleHubManagerForUser:Landroid/util/SparseArray;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p7

    new-instance p1, Lcom/android/settingslib/notification/ConversationIconFactory;

    invoke-static {p7}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p10

    const-string p2, "appContext"

    invoke-static {p7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->notification_guts_conversation_icon_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p11

    move-object p6, p1

    move-object p8, p4

    move-object p9, p5

    invoke-direct/range {p6 .. p11}, Lcom/android/settingslib/notification/ConversationIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;->iconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    return-void
.end method
