.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;
    }
.end annotation


# instance fields
.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mOnConfigurationChangedListener:Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchHandler:Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchHandler:Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnConfigurationChangedListener(Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;

    return-void
.end method

.method public setOnTouchListener(Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchHandler:Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    return-void
.end method
