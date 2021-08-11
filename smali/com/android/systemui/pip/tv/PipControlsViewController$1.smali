.class Lcom/android/systemui/pip/tv/PipControlsViewController$1;
.super Ljava/lang/Object;
.source "PipControlsViewController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$000(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$200(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$100(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$200(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$100(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/tv/PipManager;->removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    return-void
.end method
