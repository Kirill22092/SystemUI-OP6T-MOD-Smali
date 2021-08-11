.class public final Lcom/android/systemui/util/RingerModeTrackerImpl;
.super Ljava/lang/Object;
.source "RingerModeTrackerImpl.kt"

# interfaces
.implements Lcom/android/systemui/util/RingerModeTracker;


# instance fields
.field private final ringerMode:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ringerModeInternal:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1    # Landroid/media/AudioManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/RingerModeLiveData;

    new-instance v1, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerMode$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerMode$1;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, p2, p3, v2, v1}, Lcom/android/systemui/util/RingerModeLiveData;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/android/systemui/util/RingerModeLiveData;

    new-instance v1, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerModeInternal$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerModeInternal$1;-><init>(Landroid/media/AudioManager;)V

    const-string p1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, p2, p3, p1, v1}, Lcom/android/systemui/util/RingerModeLiveData;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public getRingerMode()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public getRingerModeInternal()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Landroidx/lifecycle/LiveData;

    return-object p0
.end method
