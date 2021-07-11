.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler$1;
.super Landroid/view/ViewOutlineProvider;
.source "MediaCarouselScrollHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getCarouselWidth$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getCarouselHeight$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getCornerRadius$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I

    move-result p0

    int-to-float v5, p0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method
