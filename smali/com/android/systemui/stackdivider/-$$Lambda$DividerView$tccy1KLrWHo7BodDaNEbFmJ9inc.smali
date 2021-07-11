.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field public final synthetic f$1:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;->f$1:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$tccy1KLrWHo7BodDaNEbFmJ9inc;->f$1:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$3$DividerView(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V

    return-void
.end method
