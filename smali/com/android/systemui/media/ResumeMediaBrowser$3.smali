.class Lcom/android/systemui/media/ResumeMediaBrowser$3;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/ResumeMediaBrowser;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/ResumeMediaBrowser;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected for restart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v2}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$500(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onConnected()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    return-void
.end method
