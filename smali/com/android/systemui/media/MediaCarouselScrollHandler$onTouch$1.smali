.class final Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;->onTouch(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $scrollXAmount:I

.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iput p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;->$scrollXAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getScrollView$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/media/MediaScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v1

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;->$scrollXAmount:I

    if-eqz v1, :cond_0

    neg-int p0, p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
