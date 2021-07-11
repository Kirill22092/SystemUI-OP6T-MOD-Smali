.class public final Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;
.super Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
.source "MediaResumeListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    invoke-direct {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object v0, v0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "MediaResumeListener"

    if-nez v0, :cond_2

    const-string v0, "Error after connect"

    .line 242
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object v0, v0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 244
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0, v1}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected for restart "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object v3, v3, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object v2, v2, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v2}, Lcom/android/systemui/media/MediaResumeListener;->access$getContext$p(Lcom/android/systemui/media/MediaResumeListener;)Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 249
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    .line 251
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    return-void

    .line 248
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public onError()V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object v1, v1, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object v0, v0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void
.end method
