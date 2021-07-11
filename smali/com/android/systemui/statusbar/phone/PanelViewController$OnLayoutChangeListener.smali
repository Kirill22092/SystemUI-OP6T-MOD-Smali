.class public Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 1677
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1681
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelLaidOut()V

    .line 1682
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1683
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1684
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1685
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3700(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    .line 1686
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZ)V

    .line 1687
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    :cond_0
    return-void
.end method
