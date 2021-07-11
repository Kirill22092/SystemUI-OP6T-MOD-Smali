.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusIconState"
.end annotation


# instance fields
.field distanceToViewEnd:F

.field public justAdded:Z

.field public visibleState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/4 v0, 0x0

    .line 561
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 565
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 6

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 574
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v0, v1

    .line 576
    instance-of v1, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v1, :cond_1

    return-void

    .line 579
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 584
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    if-nez v4, :cond_3

    .line 585
    invoke-interface {v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-nez v4, :cond_2

    goto :goto_1

    .line 608
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_4

    .line 610
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    goto :goto_2

    .line 587
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 594
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v2

    .line 613
    :cond_4
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v1, v4, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    if-eqz v2, :cond_5

    .line 615
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    .line 617
    :cond_5
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :goto_3
    const/4 p1, 0x0

    .line 620
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 621
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method
