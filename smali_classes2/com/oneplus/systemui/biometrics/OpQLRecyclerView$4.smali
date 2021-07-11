.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onEnterCancelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 582
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "QuickLaunch.QLRecyclerView"

    const-string v0, "mEnterAnimator end"

    .line 583
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;FZ)V

    .line 586
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    monitor-enter p1

    .line 587
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1402(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 588
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
