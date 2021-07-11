.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private final mResources:Landroid/content/res/Resources;

.field private mStatusBarView:Landroid/view/ViewGroup;

.field private final mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Landroid/content/res/Resources;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 64
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    .line 65
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 66
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    .line 68
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    if-gez p1, :cond_0

    const p1, 0x1050249

    .line 69
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    :cond_0
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHeight()V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 144
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    if-eqz p1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyHeight()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 7

    .line 101
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7ffff8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 110
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-void
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    return p0
.end method

.method public refreshStatusBarHeight()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    if-eq v1, v0, :cond_0

    .line 87
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    .line 124
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method
