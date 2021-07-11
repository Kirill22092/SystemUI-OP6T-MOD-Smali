.class Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "PipResizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipResizeGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SysUiInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;->this$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    .line 375
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;->this$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->access$100(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
