.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$Divider$PFK1wU0r4FZbucBwkJAZvajxzCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$PFK1wU0r4FZbucBwkJAZvajxzCU;->f$0:Lcom/android/systemui/stackdivider/Divider;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$PFK1wU0r4FZbucBwkJAZvajxzCU;->f$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->lambda$updateVisibility$1$Divider(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
