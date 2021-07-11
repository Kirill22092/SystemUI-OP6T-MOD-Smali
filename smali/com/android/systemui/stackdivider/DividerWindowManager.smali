.class public Lcom/android/systemui/stackdivider/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field final mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wm/SystemWindows;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;III)V
    .locals 7

    .line 54
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f2

    const v4, 0x20840028

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 59
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 60
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string p3, "DockedStackDivider"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p3, 0x3

    .line 62
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 p2, 0x700

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 66
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    iget-object p3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f2

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/android/systemui/wm/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 67
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public remove()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wm/SystemWindows;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public setSlippery(Z)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v1, 0x20000000

    if-eqz p1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v3, v1

    if-nez v4, :cond_0

    or-int p1, v3, v1

    .line 80
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const v1, -0x20000001

    and-int/2addr v1, v2

    .line 83
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/wm/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wm/SystemWindows;->setTouchableRegion(Landroid/view/View;Landroid/graphics/Region;)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_1

    or-int/lit8 p1, v3, 0x10

    .line 97
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    and-int/lit8 v0, v2, -0x11

    .line 100
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 104
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/wm/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
