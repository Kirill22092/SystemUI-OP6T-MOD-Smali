.class final Lcom/android/systemui/media/MediaDeviceManager$Token;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDeviceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager$Token\n*L\n1#1,174:1\n*E\n"
.end annotation


# instance fields
.field private final controller:Landroid/media/session/MediaController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private current:Lcom/android/settingslib/media/MediaDevice;

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private started:Z

.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDeviceManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/media/session/MediaController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaController;",
            "Lcom/android/settingslib/media/LocalMediaManager;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localMediaManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->controller:Landroid/media/session/MediaController;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method public static final synthetic access$updateCurrent(Lcom/android/systemui/media/MediaDeviceManager$Token;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->updateCurrent()V

    return-void
.end method

.method private final setCurrent(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->current:Lcom/android/settingslib/media/MediaDevice;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->current:Lcom/android/settingslib/media/MediaDevice;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->key:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$processDevice(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V

    :cond_1
    return-void
.end method

.method private final updateCurrent()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {v2}, Lcom/android/systemui/media/MediaDeviceManager;->access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->setCurrent(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->setCurrent(Lcom/android/settingslib/media/MediaDevice;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
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

    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->controller:Landroid/media/session/MediaController;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    current device is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->current:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->controller:Landroid/media/session/MediaController;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    PlaybackType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (1 for local, 2 for remote)"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    route="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getToken()Landroid/media/session/MediaSession$Token;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->controller:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$getFgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$Token$onDeviceListUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaDeviceManager$Token$onDeviceListUpdate$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Token;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0
    .param p1    # Lcom/android/settingslib/media/MediaDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "device"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$getFgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/MediaDeviceManager$Token$onSelectedDeviceStateChanged$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaDeviceManager$Token$onSelectedDeviceStateChanged$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Token;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->updateCurrent()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->started:Z

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->started:Z

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    return-void
.end method
