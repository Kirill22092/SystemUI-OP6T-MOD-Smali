.class public final Lcom/android/systemui/media/MediaDataFilter$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "MediaDataFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataFilter;-><init>(Lcom/android/systemui/media/MediaDataCombineLatest;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDataFilter;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter$1;->this$0:Lcom/android/systemui/media/MediaDataFilter;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter$1;->this$0:Lcom/android/systemui/media/MediaDataFilter;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDataFilter;->access$getExecutor$p(Lcom/android/systemui/media/MediaDataFilter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;-><init>(Lcom/android/systemui/media/MediaDataFilter$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
