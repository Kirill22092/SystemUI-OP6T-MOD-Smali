.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;->f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$u5GQHsrRvt8_5w1XNqzKKcI9oT8;->f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$2$DividerView(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method
