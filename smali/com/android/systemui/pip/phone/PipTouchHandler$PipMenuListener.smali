.class Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onPipDismiss()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 202
    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPipActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 203
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureDismissByTap(Landroid/content/Context;Landroid/util/Pair;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->removeDoubleTapTimeoutCallback()V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    return-void
.end method

.method public onPipExpand()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPipToFullscreen()V

    return-void
.end method

.method public onPipMenuStateChanged(IZLjava/lang/Runnable;)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$000(Lcom/android/systemui/pip/phone/PipTouchHandler;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public onPipShowMenu()V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 213
    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 212
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    return-void
.end method
