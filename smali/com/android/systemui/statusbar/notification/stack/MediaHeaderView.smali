.class public Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "MediaHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public performAddAnimation(JJZ)V
    .locals 0

    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public setContentView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x2

    .line 50
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
