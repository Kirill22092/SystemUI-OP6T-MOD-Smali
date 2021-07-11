.class Lcom/android/systemui/stackdivider/DividerView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/util/function/Consumer;

.field final synthetic val$endDelay:J


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/util/function/Consumer;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$3;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$3;->val$endAction:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    .line 679
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 663
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 669
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->val$endDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->mCancelled:Z

    move-wide v0, v2

    :goto_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->val$endAction:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->mCancelled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 677
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->mCancelled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 678
    invoke-static {}, Lcom/android/systemui/stackdivider/DividerView;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting endFling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DividerView"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->val$endAction:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;-><init>(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
