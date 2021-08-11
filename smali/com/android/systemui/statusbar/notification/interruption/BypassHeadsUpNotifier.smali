.class public final Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;
.super Ljava/lang/Object;
.source "BypassHeadsUpNotifier.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBypassHeadsUpNotifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BypassHeadsUpNotifier.kt\ncom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier\n*L\n1#1,145:1\n*E\n"
.end annotation


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final context:Landroid/content/Context;

.field private currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private enabled:Z

.field private final entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private fullyAwake:Z

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/tuner/TunerService;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/NotificationMediaManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/tuner/TunerService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationLockscreenUserManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunerService"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->enabled:Z

    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;)V

    const-string/jumbo p0, "show_media_when_bypassing"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p8, p1, p0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setEnabled$p(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->enabled:Z

    return-void
.end method

.method private final canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->isAutoHeadsUpAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private final isAutoHeadsUpAllowed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->fullyAwake:Z

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAutoHeadsUp(Z)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 2
    .param p1    # Landroid/media/MediaMetadata;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onStatePostChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final setFullyAwake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->fullyAwake:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public final setUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    return-void
.end method
