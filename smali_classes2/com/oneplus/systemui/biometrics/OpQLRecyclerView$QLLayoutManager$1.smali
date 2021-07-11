.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;->this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private calculateDistanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 0

    .line 444
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 445
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    .line 450
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;->this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$900(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)F

    move-result p0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1

    .line 435
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;->this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget-object p2, p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iget-object p2, p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mLayoutManager:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    .line 436
    invoke-static {p2}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p2

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;->calculateDistanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p1

    .line 437
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v0, 0x0

    .line 439
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p1, v0, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method
