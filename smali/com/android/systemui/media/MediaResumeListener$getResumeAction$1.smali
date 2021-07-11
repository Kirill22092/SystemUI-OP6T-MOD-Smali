.class final Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;
.super Ljava/lang/Object;
.source "MediaResumeListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener;->getResumeAction(Landroid/content/ComponentName;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    new-instance v1, Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getContext$p(Lcom/android/systemui/media/MediaResumeListener;)Landroid/content/Context;

    move-result-object v2

    .line 239
    new-instance v3, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;-><init>(Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;)V

    .line 260
    iget-object v4, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    .line 238
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/media/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    .line 261
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->restart()V

    :cond_1
    return-void
.end method
