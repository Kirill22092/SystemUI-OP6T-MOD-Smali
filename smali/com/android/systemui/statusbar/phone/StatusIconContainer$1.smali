.class Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;
.super Ljava/lang/Object;
.source "StatusIconContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$100(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$208(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$200(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 239
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReRequestLayout, mReRequestLayoutTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$200(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusIconContainer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$100(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$202(Lcom/android/systemui/statusbar/phone/StatusIconContainer;I)I

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_1
    return-void
.end method
