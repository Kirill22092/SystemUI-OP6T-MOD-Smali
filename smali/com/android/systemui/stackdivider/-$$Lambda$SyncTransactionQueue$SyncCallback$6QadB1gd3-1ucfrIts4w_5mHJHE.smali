.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;->f$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    iput p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;->f$2:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;->f$0:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    iget v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$SyncCallback$6QadB1gd3-1ucfrIts4w_5mHJHE;->f$2:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->lambda$onTransactionReady$0$SyncTransactionQueue$SyncCallback(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
