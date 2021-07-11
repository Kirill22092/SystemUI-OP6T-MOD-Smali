.class Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;
.super Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipManagerPinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    return-void
.end method

.method private synthetic lambda$onActionsChanged$1()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$900(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMovementBoundsChanged$0()V
    .locals 5

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$1400(Lcom/android/systemui/pip/tv/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipManager;->access$1200(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    .line 217
    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->access$1300(Lcom/android/systemui/pip/tv/PipManager;)Landroid/view/DisplayInfo;

    move-result-object v4

    .line 216
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/systemui/pip/PipBoundsHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipManager;->access$1500(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActionsChanged$1$PipManager$PipManagerPinnedStackListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->lambda$onActionsChanged$1()V

    return-void
.end method

.method public synthetic lambda$onMovementBoundsChanged$0$PipManager$PipManagerPinnedStackListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->lambda$onMovementBoundsChanged$0()V

    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 225
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipManager;->access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PipManagerPinnedStackListener$pvNxqxzg0ewPBlnvdhxIPv7OOlM;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PipManagerPinnedStackListener$pvNxqxzg0ewPBlnvdhxIPv7OOlM;-><init>(Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$400(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$500(Lcom/android/systemui/pip/tv/PipManager;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    neg-int v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p2}, Lcom/android/systemui/pip/tv/PipManager;->access$702(Lcom/android/systemui/pip/tv/PipManager;I)I

    goto :goto_0

    .line 203
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$700(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 205
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$502(Lcom/android/systemui/pip/tv/PipManager;Z)Z

    .line 206
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    :cond_1
    return-void
.end method

.method public onMovementBoundsChanged(Z)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipManager;->access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PipManagerPinnedStackListener$xzENomr6fPtav6biMAAyvIPEf_c;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PipManagerPinnedStackListener$xzENomr6fPtav6biMAAyvIPEf_c;-><init>(Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
