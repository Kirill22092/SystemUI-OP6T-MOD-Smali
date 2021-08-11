.class Lcom/android/systemui/pip/tv/PipControlsViewController$3;
.super Ljava/lang/Object;
.source "PipControlsViewController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    check-cast p1, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$402(Lcom/android/systemui/pip/tv/PipControlsViewController;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$400(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipControlButtonView;

    move-result-object p2

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$402(Lcom/android/systemui/pip/tv/PipControlsViewController;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;

    :cond_1
    :goto_0
    return-void
.end method
