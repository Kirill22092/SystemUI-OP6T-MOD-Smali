.class public final Lcom/android/systemui/media/MediaHost$init$1;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHost;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHost;->access$getMediaDataFilter$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaDataFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHost;->access$getListener$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHost$listener$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaDataFilter;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHost;->access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHost;->access$getMediaDataFilter$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaDataFilter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHost;->access$getListener$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHost$listener$1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaDataFilter;->removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    return-void
.end method
