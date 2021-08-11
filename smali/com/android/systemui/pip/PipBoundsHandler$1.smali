.class Lcom/android/systemui/pip/PipBoundsHandler$1;
.super Ljava/lang/Object;
.source "PipBoundsHandler.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/PipBoundsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/PipBoundsHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/PipBoundsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler$1;->this$0:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler$1;->this$0:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/PipBoundsHandler;->access$000(Lcom/android/systemui/pip/PipBoundsHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler$1;->this$0:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/PipBoundsHandler;->access$200(Lcom/android/systemui/pip/PipBoundsHandler;)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler$1;->this$0:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->access$100(Lcom/android/systemui/pip/PipBoundsHandler;)Lcom/android/systemui/wm/DisplayController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayLayout;->set(Lcom/android/systemui/wm/DisplayLayout;)V

    :cond_0
    return-void
.end method
