.class Lcom/android/systemui/media/ResumeMediaBrowser$1;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/ResumeMediaBrowser;
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

    .line 85
    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "ResumeMediaBrowser"

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No children found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$000(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 95
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 96
    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p2

    .line 97
    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser$MediaItem;->isPlayable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->addTrack(Landroid/media/MediaDescription;Landroid/content/ComponentName;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Child found but not playable for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p2}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$000(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribe error for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$000(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResumeMediaBrowser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribe error for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$000(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", options: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResumeMediaBrowser"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p1}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    .line 118
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
