.class public Lcom/oneplus/systemui/statusbar/OpNotificationShelf;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "OpNotificationShelf.java"


# instance fields
.field protected mHasItemsInStableShelf:Z

.field protected mInteractive:Z

.field protected mStatusBarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setIsNotificationShelf(Z)V

    return-void
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected updateInteractivenessInternal()V
    .locals 3

    iget v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method
