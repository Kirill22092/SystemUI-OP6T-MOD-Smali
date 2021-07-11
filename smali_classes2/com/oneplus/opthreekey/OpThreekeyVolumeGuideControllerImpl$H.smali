.class final Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;
.super Landroid/os/Handler;
.source "OpThreekeyVolumeGuideControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->access$300(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->rescheduleTimeoutH()V

    goto :goto_1

    .line 132
    :cond_2
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->access$200(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;I)V

    goto :goto_1

    .line 130
    :cond_3
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->access$100(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;IZ)V

    :goto_1
    return-void
.end method
