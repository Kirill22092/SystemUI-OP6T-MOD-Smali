.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationViewState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;)V
    .locals 0

    .line 3293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;-><init>()V

    return-void
.end method

.method private handleFixedTranslationZ(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 3309
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 3311
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    :cond_0
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 2

    .line 3328
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 3329
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3330
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3333
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 3334
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 3335
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    :cond_1
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 2

    .line 3297
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 3298
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3299
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3302
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 3303
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 3304
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildrenState()V

    :cond_1
    return-void
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 0

    .line 3317
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 3318
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 3319
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3320
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 3321
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_0
    return-void
.end method
