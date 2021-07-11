.class Lcom/android/systemui/pip/phone/PipMediaController$1;
.super Landroid/content/BroadcastReceiver;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p2}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p2, "com.android.systemui.pip.phone.PLAY"

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    :cond_0
    const-string p2, "com.android.systemui.pip.phone.PAUSE"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0

    :cond_1
    const-string p2, "com.android.systemui.pip.phone.NEXT"

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 92
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto :goto_0

    :cond_2
    const-string p2, "com.android.systemui.pip.phone.PREV"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_3
    :goto_0
    return-void
.end method
