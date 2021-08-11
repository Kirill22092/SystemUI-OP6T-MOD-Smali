.class public final Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;
.super Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
.source "MediaResumeListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener;->tryUpdateResumptionList(Ljava/lang/String;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yes we can resume with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaDataManager$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object v3, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/systemui/media/MediaResumeListener;->access$getResumeAction(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaDataManager;->setResumeAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaResumeListener;->access$updateResumptionList(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void
.end method

.method public onError()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot resume with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaDataManager$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaDataManager;->setResumeAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0, v2}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void
.end method
