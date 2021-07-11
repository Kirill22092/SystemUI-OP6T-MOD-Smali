.class Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;
.super Landroid/os/Handler;
.source "OpGestureButtonViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemGestureButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;Landroid/os/Looper;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 147
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    if-eqz p1, :cond_5

    .line 162
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    move-result-object p1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_OEM_EFFECT: current stage ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v4}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$300()[F

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") -- EdgeEffectView location-on-screen: ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    .line 166
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpGestureController"

    .line 164
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result p1

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$300()[F

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    if-gt p1, v2, :cond_2

    .line 169
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->setSize()V

    .line 170
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$300()[F

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->onPull(F)V

    .line 171
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$208(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    .line 173
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->onRelease()V

    .line 177
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p0, v3}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$202(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;I)I

    goto :goto_0

    .line 158
    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)V

    goto :goto_0

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->vibrate()V

    .line 152
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez p1, :cond_5

    .line 153
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method
