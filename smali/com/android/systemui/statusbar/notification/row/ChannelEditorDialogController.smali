.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorDialogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorDialogController.kt\ncom/android/systemui/statusbar/notification/row/ChannelEditorDialogController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,440:1\n1591#2,2:441\n*E\n*S KotlinDebug\n*F\n+ 1 ChannelEditorDialogController.kt\ncom/android/systemui/statusbar/notification/row/ChannelEditorDialogController\n*L\n151#1,2:441\n*E\n"
.end annotation


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

.field private appNotificationsEnabled:Z

.field private appUid:Ljava/lang/Integer;

.field private final channelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

.field private final dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

.field private final edits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/NotificationChannel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final groupNameLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mConfigurationListener:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;

.field private mOrientation:I

.field private final noMan:Landroid/app/INotificationManager;

.field private onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private packageName:Ljava/lang/String;

.field private final paddedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prepared:Z

.field private final providedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final wmFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/INotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noMan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "c.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    const/high16 p1, -0x7efc0000

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->mConfigurationListener:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;

    return-void
.end method

.method public static final synthetic access$done(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->done()V

    return-void
.end method

.method public static final synthetic access$getConfigurationController$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method public static final synthetic access$getMConfigurationListener$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->mConfigurationListener:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;

    return-object p0
.end method

.method public static final synthetic access$getMOrientation$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->mOrientation:I

    return p0
.end method

.method public static final synthetic access$getProvidedChannels$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setMOrientation$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->mOrientation:I

    return-void
.end method

.method private final applyAppNotificationsOn(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, v1, p0, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :cond_1
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    move-exception p0

    const-string p1, "ChannelDialogController"

    const-string v0, "Error calling NoMan"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final buildGroupNameLookup()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "group.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v4, "group.name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final checkAreAppNotificationsOn()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :cond_1
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    move-exception p0

    const-string v0, "ChannelDialogController"

    const-string v1, "Error calling NoMan"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final done()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->resetState()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final fetchNotificationChannelGroups()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    const-string v0, "noMan.getNotificationCha\u2026eName!!, appUid!!, false)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :cond_3
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    move-exception p0

    const-string v0, "ChannelDialogController"

    const-string v1, "Error fetching channel groups"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private final getDisplayableChannels(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)",
            "Lkotlin/sequences/Sequence<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;

    invoke-static {p1, p0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic groupNameLookup$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final hasChanges()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final initDialog()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->setContext(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->build()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    const/4 v1, 0x0

    const-string v2, "dialog"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-eqz v0, :cond_6

    const-string/jumbo v4, "\u00a0"

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-eqz v0, :cond_5

    sget v1, Lcom/android/systemui/R$layout;->op_notif_half_shelf:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget v1, Lcom/android/systemui/R$id;->half_shelf_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setAppName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setChannels(Ljava/util/List;)V

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    sget v1, Lcom/android/systemui/R$id;->done_button:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v1, Lcom/android/systemui/R$id;->see_more_button:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/OpThemeUtils;->getOneplusAccentColor(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$id;->done_button:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lcom/android/systemui/R$id;->see_more_button:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$id;->half_shelf_dialog:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    const/16 p0, 0x7e1

    invoke-virtual {v0, p0}, Landroid/view/Window;->setType(I)V

    const p0, 0x1030056

    invoke-virtual {v0, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v1, -0x3

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x51

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "attributes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final padToFourChannels(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->getDisplayableChannels(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->distinct(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miscellaneous"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public static synthetic paddedChannels$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final resetState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private final setChannelImportance(Landroid/app/NotificationChannel;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0, p1}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :cond_1
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v1

    :catch_0
    move-exception p0

    const-string p1, "ChannelDialogController"

    const-string p2, "Unable to update notification importance"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setChannelImportance(Landroid/app/NotificationChannel;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->applyAppNotificationsOn(Z)V

    :cond_2
    return-void
.end method

.method public final areAppNotificationsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    return p0
.end method

.method public final close()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->done()V

    return-void
.end method

.method public final getOnFinishListener()Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    return-object p0
.end method

.method public final getPaddedChannels$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    return-object p0
.end method

.method public final groupNameForId(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final launchSettings(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final prepareDialogForApp(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channels"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appIcon"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->checkAreAppNotificationsOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->fetchNotificationChannelGroups()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->buildGroupNameLookup()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->padToFourChannels(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->initDialog()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepared:Z

    return-void
.end method

.method public final proposeEditForChannel(Landroid/app/NotificationChannel;I)V
    .locals 1
    .param p1    # Landroid/app/NotificationChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->hasChanges()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;->updateDoneButtonText(Z)V

    return-void

    :cond_1
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final proposeSetAppNotificationsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->hasChanges()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;->updateDoneButtonText(Z)V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    return-void
.end method

.method public final show()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepared:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call prepareDialogForApp() before calling show()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
