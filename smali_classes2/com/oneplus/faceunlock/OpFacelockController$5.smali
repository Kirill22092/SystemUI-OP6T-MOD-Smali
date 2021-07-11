.class Lcom/oneplus/faceunlock/OpFacelockController$5;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$5;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$5;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 586
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$5;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$5;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    :cond_0
    return-void
.end method
