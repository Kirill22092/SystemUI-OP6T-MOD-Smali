.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
