.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onLeaveCancelView()V
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

    .line 646
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 649
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "QuickLaunch.QLRecyclerView"

    const-string v0, "mLeaveAnimator end"

    .line 650
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1502(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Z)Z

    .line 653
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;FZ)V

    .line 654
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    monitor-enter p1

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1602(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 656
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$800(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    return-void

    :catchall_0
    move-exception p0

    .line 656
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
