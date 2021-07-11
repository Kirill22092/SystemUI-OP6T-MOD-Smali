.class Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;
.super Landroid/window/WindowContainerTransactionCallback;
.source "SyncTransactionQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/SyncTransactionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCallback"
.end annotation


# instance fields
.field mId:I

.field final mWCT:Landroid/window/WindowContainerTransaction;

.field final synthetic this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    const/4 p1, -0x1

    .line 135
    iput p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    .line 139
    iput-object p2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private synthetic lambda$onTransactionReady$0(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$400(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_0
    iget v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    if-eq v1, p1, :cond_0

    const-string p2, "SyncTransactionQueue"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an unexpected onTransactionReady. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v0

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$002(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    .line 166
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$300(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$200(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    invoke-static {}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SyncTransactionQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransactionReady id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$400(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$500(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Landroid/view/SurfaceControl$Transaction;)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$400(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 171
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$400(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->send()V

    .line 173
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$onTransactionReady$0$SyncTransactionQueue$SyncCallback(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->lambda$onTransactionReady$0(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$300(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;-><init>(Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method send()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$000(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {v0, p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$002(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    .line 149
    invoke-static {}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$100()Z

    move-result v0

    const-string v1, "SyncTransactionQueue"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending sync transaction: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v0, Landroid/window/WindowOrganizer;

    invoke-direct {v0}, Landroid/window/WindowOrganizer;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v2, p0}, Landroid/window/WindowOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    .line 151
    invoke-static {}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Sent sync transaction. Got id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$300(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$200(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x14b4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync Transactions must be serialized. In Flight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    .line 146
    invoke-static {v2}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$000(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->access$000(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
